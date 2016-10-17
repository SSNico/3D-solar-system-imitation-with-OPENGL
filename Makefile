
FLAGS = -I/usr/include -L/usr/lib -lglut -lGLEW -lGL -lGLU -lX11 -Wno-write-strings
all:solar.cpp planet.* getbmp.*
	g++ solar.cpp planet.cpp getbmp.cpp -o solar $(FLAGS)

%: %.cpp
	g++ $*.cpp -o $* $(FLAGS)

clean:
	-rm -f *.o solar core
