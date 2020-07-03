#Compiler variables
CC = /opt/riscv32i/bin/riscv32-unknown-elf-gcc
OBJDUMP = /opt/riscv32i/bin/riscv32-unknown-elf-objdump
OBJCOPY = /opt/riscv32i/bin/riscv32-unknown-elf-objcopy

#compiler flags
CFLAGS = -march=rv32imc -O3 -Wall -flto

#link flags
LINK_FLAGS = -march=rv32imc -Wall -flto -nostartfiles -Wl,-Bstatic,-T,sections.lds,--strip-debug,-Map=firmware.map,--cref -ffreestanding -nostdlib

#sources
NAME = test_irq
#NAME_ELF = $(addsuffix .elf, $(NAME))
SRCS = test_irq.c
SRCS_NO_DIR = $(notdir $(SRCS))
ASSEMS = $(SRCS_NO_DIR:.c=.s)
OBJS = $(ASSEMS:.s=.o)

all: $(NAME).hex4	
	@echo creating hex4 file from source	
#all tests
test: 
	@echo all tests

#compile elf file from source
compile: $(NAME).elf
	@echo Compiled elf file from sources

#dump assembly code on the terminal
dump: $(NAME).elf	
	$(OBJDUMP) -d $(NAME).elf 
#Compile step
$(ASSEMS) : $(SRCS)
	$(CC) $(CFLAGS) -S $^

#assemble step
$(OBJS) : $(ASSEMS) 
	$(CC) $(CFLAGS) -c $^

start.o : start.S
	$(CC) $(CFLAGS) -c $^

#link step
$(NAME).elf: start.o $(OBJS) 
	$(CC) $(LINK_FLAGS) -o $@ $^ 

#create hex files
$(NAME).hex4: $(NAME).elf	
	$(OBJCOPY) -O ihex $(NAME).elf $(NAME).hex
	./ihex2all $(NAME).hex $(NAME).hex4
	
#clean up
clean:
	-rm -rf *.o *.s *.lst *.map *.hex *.hex4 *.elf


