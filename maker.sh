#!/bin/bash

read -p 'Please enter the name of the C file without the extension: ' FILENAME

rm Makefile
clear
echo 'CC = cc' >> Makefile
echo 'CFLAGS  = -std=c99 -Wall -Wextra -Wpedantic' >> Makefile
echo -e '\n'"$FILENAME"': '"$FILENAME"'.o' >> Makefile
echo -e '\t$(CC) '"$FILENAME"'.o -o $@' >> Makefile
echo -e '\n'"$FILENAME"'.o: '"$FILENAME"'.c' >> Makefile
echo -e '\t$(CC) $(CFLAGS) -c '"$FILENAME"'.c -o $@' >> Makefile
echo -e '\nclean:' >> Makefile
echo -e '\trm *.o' >> Makefile
echo -e '\trm '"$FILENAME"'' >> Makefile
echo 'Makefile has been created!'
