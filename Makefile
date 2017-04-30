EXECS=jacobi multigrid_1d
CC=gcc
FLAGS=-O3 -Wall -g -lrt -lm

all: ${EXECS}

multigrid_1d: multigrid_1d.c
	${CC} ${FLAGS} $^ -o multigrid_1d

jacobi: jacobi.c
	${CC} ${FLAGS} $^ -o jacobi


clean:
	rm -f ${EXECS}
