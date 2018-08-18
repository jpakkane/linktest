#!/bin/sh

cc liba.c -c -o liba.o
cc liba2.c -c -o liba2.o
cc libb.c -c -o libb.o

cc main.c -c -o main.o

ar cr liba.a liba.o liba2.o
ar cr libb.a libb.o

#cc -o prog main.o liba.a libb.a
#cc -o prog main.o -L`pwd` -lb -la
cc -o prog main.o -L`pwd` -la -lb
#cc -o prog main.o -Wl,--start-group libb.a liba.a -Wl,--end-group
