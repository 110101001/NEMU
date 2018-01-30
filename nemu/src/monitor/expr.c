#include "nemu.h"
#include "cpu/reg.h"
#include "memory/memory.h"

#include <stdlib.h>

/* We use the POSIX regex functions to process regular expressions.
 * Type 'man regex' for more information about POSIX regex functions.
 */
#include <sys/types.h>
#include <regex.h>
#include <elf.h>
extern CPU_STATE cpu;
extern uint32_t look_up_symtab(char *sym, bool *success);

enum {
	HEX=254,REG=253,NOTYPE=256, EQ=244,NUM=255,L_BRA=251,R_BRA=250,DEREF=249,ADD=245,MINUS=246,MUL=247,DIV=248,SYMBOL=252

	/* TODO: Add more token types */

};

static struct rule {
	char *regex;
	int token_type;
} rules[] = {

	/* TODO: Add more rules.
	 * Pay attention to the precedence level of different rules.
	 */
	{" +",	NOTYPE},// white space
	{"0[xX][0-9a-fA-F]+",HEX},
	{"\\$e[a-z]+",REG},
	{"\\+", ADD},
	{"-",MINUS},
	{"\\*",MUL},
	{"/",DIV},
	{"==", EQ},
	{"[0-9]+",NUM},
	{"\\(",L_BRA},
	{"\\)",R_BRA},
	{"[0-9a-zA-Z_]+",SYMBOL}
};

#define NR_REGEX (sizeof(rules) / sizeof(rules[0]) )

static regex_t re[NR_REGEX];

/* Rules are used for more times.
 * Therefore we compile them only once before any usage.
 */
void init_regex() {
	int i;
	char error_msg[128];
	int ret;

	for(i = 0; i < NR_REGEX; i ++) {
		ret = regcomp(&re[i], rules[i].regex, REG_EXTENDED);
		if(ret != 0) {
			regerror(ret, &re[i], error_msg, 128);
			assert(ret != 0);
		}
	}
}

typedef struct token {
	int type;
	char str[32];
} Token;

Token tokens[32];
int nr_token;

static bool make_token(char *e) {

	int position = 0;
	int i;
	regmatch_t pmatch;
	
	nr_token = 0;
	while(e[position] != '\0') {
		/* Try all rules one by one. */
		for(i = 0; i < NR_REGEX; i ++) {
			//printf("Here\n");
			if(regexec(&re[i], e + position, 1, &pmatch, 0) == 0 && pmatch.rm_so == 0) {
				//printf("pos:%s,rule:%s\n",(e+position),rules[i].regex);
				char *substr_start = e + position;
				int substr_len = pmatch.rm_eo;

				//printf("match regex[%d] at position %d with len %d: %.*s\n", i, position, substr_len, substr_len, substr_start);
				position += substr_len;

				/* TODO: Now a new token is recognized with rules[i]. 
				 * Add codes to perform some actions with this token.
				 */


				switch(rules[i].token_type) {
					case NOTYPE: break;
					default: tokens[nr_token].type = rules[i].token_type;
							 for(int j=0;j<substr_len;j++){
								 tokens[nr_token].str[j]=*(substr_start+j);
								 //printf("str:%c\n",*(substr_start+j));
							 }
							 tokens[nr_token].str[substr_len]=0;
							 nr_token ++;
							 //printf("Here!\n");

				}

				//printf("num:%d,type:%d,str:%s\n",nr_token,tokens[nr_token].type,tokens[nr_token].str);
				break;
			}
		}

		if(i == NR_REGEX) {
			//printf("no match at position %d\n%s\n%*.s^\n", position, e, position, "");
			return false;
		}
	}

	return true; 
}

int check_parentheses(int p,int q,bool *success){
//	printf("LB:%d,RB:%d\n",tokens[p].type,tokens[q].type);
	if(tokens[p].type==L_BRA||tokens[q].type==R_BRA){// || is to deal with unmatched bras
		int i=0,j=0,a;
		for(a=p;a<=q;a++){
			if(tokens[a].type==L_BRA){
				i++;
			}
			if(tokens[a].type==R_BRA){
				j++;
				//printf("Encounter R_BRA @ %d,i,j:%d,%d\n",a,i,j);
				if(j==i&&a!=q) return 0;
			}
		}
		//printf("i:%d,j:%d\n",i,j);
		if(i==j) {
			if(tokens[p].type==L_BRA)
				return 1;
			else return 0;
		}
		//printf("Unmatched bras!\n");
		*success=0;
		return 0;
	}
	return 0;
}

int eval(int p, int q,bool *success) {
	int val1,val2,op=p;
	if(*success==0) return 0;
	//printf("%d,%d\n",p,q);
	if(p > q) {//Bad expression
		*success=0;
		return 0;
		/* Bad expression */
	}
	else if(p == q) {
		/* Single token.
		* For now this token should be a number.
		* Return the value of the number.
		*/
		int res=0;
		int i;
		bool symbol_success_flag=0;
		switch(tokens[p].type){
			case NUM:
				i=0;
				while(tokens[p].str[i]!=0){
					res*=10;
					res+=tokens[p].str[i]-'0';
					i++;
				}
				break;
			case HEX:
				i=2;
				while(tokens[p].str[i]!=0){
					res*=16;
					res+=tokens[p].str[i]<58?tokens[p].str[i]-'0':tokens[p].str[i]-'a'+10;
					i++;
				}
				break;
			case REG:
					if(!strcmp(tokens[p].str,"$eax")){ 
						res=cpu.eax;
						
					}
					else if(!strcmp(tokens[p].str,"$ebx")){ 
						res=cpu.ebx;
						
					}
					else if(!strcmp(tokens[p].str,"$ecx")){ 
						res=cpu.ecx;
						
					}
					else if(!strcmp(tokens[p].str,"$edx")){ 
						res=cpu.edx;
						
					}
					else if(!strcmp(tokens[p].str,"$esp")){
						res=cpu.esp;
						
					}
					else if(!strcmp(tokens[p].str,"$ebp")){ 
						res=cpu.ebp;
					}
					else if(!strcmp(tokens[p].str,"$esi")){
						res=cpu.esi;
					}
					else{//invalid regisiter
						*success=0;
						return 0;
					}
					break;
			case SYMBOL:
				res=look_up_symtab(tokens[p].str,&symbol_success_flag);
				if(symbol_success_flag==0) *success=0;
				break;
			default: *success=0;
		}
			return res;
	}
	else if(check_parentheses(p, q,success) == true) {
		/* The expression is surrounded by a matched pair of parentheses.
		   * If that is the case, just throw away the parentheses.
		   */

		return eval(p + 1, q - 1,success);
	}
	else {
		if(*success==0) return 0;//In case para is unmatched
		for(int i=p;i<=q;i++){
			if(tokens[i].type==L_BRA){
				int bra_count=1;
				while(bra_count!=0){
					i++;
					if(tokens[i].type==L_BRA) bra_count++;
					if(tokens[i].type==R_BRA) bra_count--;
				}
			}
			if(tokens[i].type<=tokens[op].type) op=i;
			//printf("type:%d,str:%s\n",tokens[i].type,tokens[i].str);
		}
		//op = the position of dominant operator in the token expression;
		if(tokens[op].type==DEREF){
			//printf("addr is %x\n",eval(op+1,q));
			//printf("content is %x\n",laddr_read(eval(op+1,q),4));
			return laddr_read(eval(op+1,q,success),4);
		}
		val1 = eval(p, op - 1,success);
		val2 = eval(op + 1, q,success);
		//printf("op_pos:%d\n",op);
		switch(tokens[op].type) {
			case ADD: return val1 + val2;
			case MINUS: return val1 - val2;
			case MUL: return val1 * val2;
			case DIV: return val1 / val2;
			case EQ: return val1==val2;
			default: assert(0);
		}
	}
}
uint32_t expr(char *e, bool *success) {
	/*int addr;
	uint32_t ret;
	sscanf(e,"%x",&addr);
	ret=laddr_read(addr,4);
	*success=true;
	printf("%x: %x\n",addr,ret);
	return addr;*/
	if(!make_token(e)) {
		*success = false;
		return 0;
	}

	//printf("\nPlease implement expr at expr.c\n");
	//assert(0);

	for(int i = 0; i < nr_token; i ++) {
		if(tokens[i].type == MUL && (i == 0 || tokens[i - 1].type == L_BRA) ) {
			tokens[i].type = DEREF;
		}
	}
	*success = true;
	return eval(0,nr_token-1,success);
}

