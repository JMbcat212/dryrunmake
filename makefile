CC= g++
CFLAGS = -c

all: build doczip

build: mywc

mywc: wc.c
	$(CC) $(CFLAGS) wc.c
	$(CC) -o mywc wc.o

doc: 
	@doxygen *.c

clean:
	rm *.o
	rm mywc

doczip: 
	tar czvf Docu.tgz html latex
