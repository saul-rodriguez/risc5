/opt/riscv32i/bin/riscv32-unknown-elf-gcc -march=rv32imc -O3 -nostartfiles -Wl,-Bstatic,-T,sections.lds,--strip-debug,-Map=firmware.map,--cref \
  -ffreestanding -nostdlib -o $1.elf start.S ../common/vargen.c ../common/eusart1.c $1.c 

#riscv32-unknown-elf-as -march=rv32imc  -o $1.o $1.asm

#riscv32-unknown-elf-ld -Ttext=$2 -o $1.elf $1.o

/opt/riscv32i/bin/riscv32-unknown-elf-nm $1.elf

/opt/riscv32i/bin/riscv32-unknown-elf-objdump -d $1.elf

/opt/riscv32i/bin/riscv32-unknown-elf-objcopy -O ihex $1.elf $1.hex

./ihex2all $1.hex $1.hex4
 
