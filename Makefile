CXX=g++
CXXFLAGS=-std=c++11	-Wall	-Wextra

all:	a.out

debug:	CXXFLAGS	+=	-g
debug:	a.out_debug

clean:
	rm	-f	a.out	a.out_debug	ChessMath.o	ChessMath_debug.o
a.out:	main.cpp	ChessMath.o
	$(CXX)	$(CXXFLAGS)	$^	-o	$@

a.out_debug:	main.cpp	ChessMath_debug.o
	$(CXX)	$(CXXFLAGS)	-g	$^	-o	$@
ChessMath.o:	ChessMath.cpp	ChessMath.h
	$(CXX)	$(CXXFLAGS)	-c	$<	-o	$@

ChessMath_debug.o:	ChessMath.cpp	ChessMath.h
	$(CXX)	$(CXXFLAGS)	-g	-c	$<	-o	$@	