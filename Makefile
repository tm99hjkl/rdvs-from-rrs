all: Main

clean: 
	rm *.hi *.o Main

Main: Main.hs
	ghc $<
	rm *.hi *.o
