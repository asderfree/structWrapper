CXX=g++
CFLAGS = -g -O2 -std=c++0x -Wno-deprecated -Wall -Werror
objects = main.o factory.o 

factory: $(objects)
	$(CXX) -o factory $(objects)

$(objects): factory.h

main.o: main.cpp
factory.o: factory.cpp

clean:
	rm factory $(objects)