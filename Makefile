CC=g++
CCFLAGS= -Wall -Werror -std=c++11 -g
SRC= $(wildcard ../*.cc)
OBJ= $(SRC:.cc=.o)
TST= $(wildcard *.cc)
OBJ_TEST = $(filter-out ../main.o, $(OBJ)) $(TST:.cc=.o)

cestincroyable.out : $(OBJ_TEST) 
	$(CC) $(CCFLAGS)  -o $@ $^

jouer: cestincroyable.out
	./cestincroyable.out
%.o: %.cc
	$(CC) $(CCFLAGS) -I../ -o $@ -c $<

clean :
	rm -f $(OBJ_TEST) cestincroyable.out
