Compiling requires some prerequisites

1. Clone git repository of SDLAda https://github.com/Lucretia/sdlada and follow instructions as provided in README.md file.
2. Install SDL2-devel and SDL2_image-devel (depending on your Linux distribution the names of the packages may vary somewhat).
3. Update the threed.gpr file so that it contains full pathname of sdlada/share/gpr/sdlada.gpr".
4. gprbuild -largs $(pkg-config sdl2 SDL2_image --libs) (install additional packages as required).
5. If everything goes as planned you will have an executable file created which can be run from the command line.
