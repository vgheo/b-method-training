CC       = gcc
OBJ      = DATA_BASE_1.o FILE_1.o FILE_ACCESS_2.o FILE_BUFFER_1.o INNER_INTERFACE_1.o MAIN_INTERFACE_1.o PARTIAL_OBJECT_1.o QUERY_1.o TOTAL_OBJECT_1.o BASIC_COMMAND.o BASIC_FILE_VAR.o BASIC_IO.o BASIC_SEX.o BASIC_STATUS.o
LINKOBJ  = $(OBJ)
BIN      = DB_SYS
RM       = rm -f

.PHONY: all all-before all-after clean clean-custom

all: all-before $(BIN) all-after

clean: clean-custom
	${RM} $(OBJ) $(BIN)

$(BIN): $(OBJ)
	$(CC) $(LINKOBJ) -o $(BIN) 

%.o: %.c
	$(CC) -c $< -o $@


