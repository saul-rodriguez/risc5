# Makefile template for PICORV32 GCC assembler projects
# Author: Saul Rodriguez
# Date:	2020-07-05
#
#  The following variables need to be set for each project:
# 	NAME = project name used as output name
#	SRCS = paths to the s files to be compiled
# 	TEXT_START = start memory address of the text section (instructions section)
#


#Compiler variables
ASSEMBLER = /opt/riscv32i/bin/riscv32-unknown-elf-as
LINKER = /opt/riscv32i/bin/riscv32-unknown-elf-ld
OBJDUMP = /opt/riscv32i/bin/riscv32-unknown-elf-objdump
OBJCOPY = /opt/riscv32i/bin/riscv32-unknown-elf-objcopy

ASSEMBLER_FLAGS = -march=rv32imc
TEXT_START = 0x00010000

#output name
NAME = porta

#sources
SRCS = porta.s
SRCS_NO_DIR = $(notdir $(SRCS))
OBJS = $(SRCS_NO_DIR:.s=.o)

all : $(NAME).hex4

#assemble step
$(OBJS) : $(SRCS) 
	$(ASSEMBLER) $(ASSEMBLER_FLAGS) -o $@ $^

#link step
$(NAME).elf: $(OBJS) 
	$(LINKER) -Ttext=$(TEXT_START) -o $@ $^ 
	
#dump assembly code and symbols table on the terminal
dump: $(NAME).elf	
	$(OBJDUMP) -d -t $(NAME).elf 
	
#create hex files
$(NAME).hex4: $(NAME).elf	
	$(OBJCOPY) -O ihex $(NAME).elf $(NAME).hex
	./ihex2all $(NAME).hex $(NAME).hex4
 
#clean up
clean:
	-rm -rf *.o *.lst *.map *.hex *.hex4 *.elf
 