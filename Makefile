# Generic OpenMPI Makefile
# Ostermann - Mar 15, 2022

CC=mpicc -Wall -Werror -O2 


CSOURCES=${wildcard *.c}
ALLTARGETS=${CSOURCES:.c=} ${CCSOURCES:.cc=} 

all: ${ALLTARGETS}	

test: ${ALLTARGETS}	
	echo "foobar 	 9pHdGraWcEy3y.NvdzCOSfu0XalZhBWUgJ/iKxpdipC  01  8"  	 	| mpiexec ./hash_cracker
	echo "vowelsRfun lFtqQCPzGxs/jOa1WSAVq1A40onc4iV1WcBdcVgxKV0  aeiou  5"		| mpiexec ./hash_cracker
	echo "foobar 	 P0jyUFlvXHFKF8.IDZKc.9dXfKDvfmFv7sD6VFxFnE1  01 10"  		| mpiexec ./hash_cracker
	echo "foobar 	 9pHdGraWcEy3y.NvdzCOSfu0XalZhBWUgJ/iKxpdipC  012 8"   		| mpiexec ./hash_cracker
	echo "foobar 	 9pHdGraWcEy3y.NvdzCOSfu0XalZhBWUgJ/iKxpdipC  01234 8" 		| mpiexec ./hash_cracker

clean:
	rm -f  *.o ${ALLTARGETS}
