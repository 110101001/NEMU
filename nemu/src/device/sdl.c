#include "nemu.h"
#include "device/vga.h"
#include "device/timer.h"
#include "device/keyboard.h"

#include <SDL/SDL.h>

#if defined(HAS_DEVICE_TIMER) || defined(HAS_DEVICE_VGA) || defined(HAS_DEVICE_KEYBOARD)

#ifdef HAS_DEVICE_VGA
extern uint8_t fontdata_8x16[128][16];
SDL_Surface *screen;
uint8_t (*pixel_buf) [SCREEN_COL];
#endif

SDL_Surface *real_screen;

#define SDL_HZ 100
static bool initialized = false;


// this thread works as follows
// 1. initialize the display
// 2. while nemu is running, update the screen, process all the events in the event queue
// 3. if receive SDL_QUIT, then terminal; else wait for 10ms and goto step 2
static int NEMU_SDL_Thread(void * ptr) {
#if defined(HAS_DEVICE_VGA) || defined(HAS_DEVICE_KEYBOARD)
	int ret = SDL_Init(SDL_INIT_VIDEO | SDL_INIT_NOPARACHUTE);
	assert(ret == 0);

	real_screen = SDL_SetVideoMode(640, 400, 8, 
			SDL_HWSURFACE | SDL_HWPALETTE | SDL_HWACCEL | SDL_ASYNCBLIT);

#ifdef HAS_DEVICE_VGA
	screen = SDL_CreateRGBSurface(SDL_SWSURFACE, 640, 400, 8,
			real_screen->format->Rmask, real_screen->format->Gmask,
			real_screen->format->Bmask, real_screen->format->Amask);
	pixel_buf = screen->pixels;

	SDL_SetPalette(real_screen, SDL_LOGPAL | SDL_PHYSPAL, (void *)&palette, 0, 256);
	SDL_SetPalette(screen, SDL_LOGPAL, (void *)&palette, 0, 256);
#endif

	SDL_WM_SetCaption("NEMU2", NULL);

	SDL_EnableKeyRepeat(SDL_DEFAULT_REPEAT_DELAY, SDL_DEFAULT_REPEAT_INTERVAL);


	// loop to get keyboard events
	SDL_Event e;
	uint64_t jiffy = 0;
#endif
	// initializing the display finish
	initialized = true;
	//For tracking if we want to quit
	while(initialized) {
#ifdef HAS_DEVICE_TIMER 
		timer_intr();
#endif
#ifdef HAS_DEVICE_VGA
		// update the screen
		if(jiffy % (SDL_HZ / VGA_HZ) == 0)
			update_screen();
#endif
#if defined(HAS_DEVICE_VGA) || defined(HAS_DEVICE_KEYBOARD)
		//Read all the events that occured
		while(SDL_PollEvent(&e)){
#if defined(HAS_DEVICE_VGA) || defined(HAS_DEVICE_KEYBOARD)
			//If user closes the window
			if (e.type == SDL_QUIT){
				nemu_state = NEMU_STOP;
			}
#endif
#ifdef HAS_DEVICE_KEYBOARD
			else if (e.type == SDL_KEYDOWN){
				keyboard_down(e.key.keysym.sym);
			} else if (e.type == SDL_KEYUP) {
				keyboard_up(e.key.keysym.sym);
			}
#endif
		}
		jiffy++;
#endif
		SDL_Delay(1000 / SDL_HZ); // 100Hz
	}
#ifdef HAS_DEVICE_VGA
	close_vga();
#endif
	//Destroy the various items
	SDL_Quit();
	return 0;
}

void close_sdl() {
	if(initialized) {
		initialized = false;
	}
}

void init_sdl() {
	if(!initialized) {
#ifdef HAS_DEVICE_VGA
		init_vga();
#endif
		SDL_Thread *thread;
		// int threadReturnValue;
		// Simply create a thread
		thread = SDL_CreateThread(NEMU_SDL_Thread, (void *)NULL);

		if (NULL == thread) {
			printf("\nSDL_CreateThread failed: %s\n", SDL_GetError());
			assert(0);
		}
	}
}
#endif
