all: main

main: main.o 
	gcc main.o -no-pie -o main

main.o: main.s
	nasm -felf64 main.s

clean:
	rm main.o main
