# Generic OpenMPI Makefile
# Ostermann - Mar 15, 2022

CC=mpicc -Wall -Werror -O2 -Wno-unused-result


CSOURCES=${wildcard *.c}
ALLTARGETS=${CSOURCES:.c=} ${CCSOURCES:.cc=} 

all: ${ALLTARGETS}	

test: ${ALLTARGETS}	
	echo "foobar 	 9pHdGraWcEy3y.NvdzCOSfu0XalZhBWUgJ/iKxpdipC  01  8"  	 	| mpiexec -n 4 ./hash_cracker
	echo "notfound 	 9pHdGraWcEy3y.NvdzCOSfu0XalZhBWUgJ/iKxpdipC  23  8"  	 	| mpiexec -n 4 ./hash_cracker
	echo "foobar 	 P0jyUFlvXHFKF8.IDZKc.9dXfKDvfmFv7sD6VFxFnE1  01 10"  		| mpiexec -n 4 ./hash_cracker
	echo "vowelsRfun lFtqQCPzGxs/jOa1WSAVq1A40onc4iV1WcBdcVgxKV0  aeiou  5"		| mpiexec -n 4 ./hash_cracker
	echo "hexydigits BKD9vk1zOVvrNd8xRZR7B5cEsqrd61b9IUmPGSu9.c2  0123456789ABCDEF  3"		| mpiexec -n 4 ./hash_cracker
	echo "andpepper	 Xl9dddHVkCrdG3vTJkuEBK9ecqr/aZT5wJFKqz/PRJC  clangCLANK  4"  		| mpiexec -n 4 ./hash_cracker


clean:
	rm -f  *.o ${ALLTARGETS}
