git whatchanged > git_log_pre.txt
rm -rf .git
git init
echo -e  "*.o\n*.d\ntestcase/bin\ngame/src/nemu-pal/data" > .gitignore
