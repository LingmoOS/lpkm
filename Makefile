all:
	- g++ lpkm.cc -o /bin/lpkm -lcurl
	- g++ readPkg.cc -o out/GetpKginf -lcurl
	- g++ buildPkg/main.cc -o out/buildLmPkg -lcurl
	- g++ installpkg/main.cc -o out/GetrLmpkg -lcurl
	- cd core && make -j40

install:
	- cp out/GetpKginf /bin/
	- cp out/buildLmPkg /bin/
	- cp out/GetrLmpkg /bin/
	- cd core && make install

clean:
	- rm out/*
	- cd core && make clean