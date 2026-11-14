CFLAGS=-Wall -g

.PHONY: all run clean

all: app

run: app
	./app

app: main.o print.o lib.o
	gcc $^ -o $@

%.o: %.c
	gcc $(CFLAGS) -c $<

clean: 
	rm -f *.o app


