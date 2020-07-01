#/opt/riscv32i/bin/riscv32-unknown-elf-gcc -march=rv32imc -O3 -nostartfiles -Wl,-Bstatic,-T,sections.lds,--strip-debug,-Map=firmware.map,--cref \
#  -ffreestanding -nostdlib -o $1.elf start.S ../common/vargen.c ../common/eusart1.c $1.c 

/opt/riscv32i/bin/riscv32-unknown-elf-gcc -march=rv32imc -O3 -Wall -flto -S ../common/vargen.c
/opt/riscv32i/bin/riscv32-unknown-elf-gcc -march=rv32imc -O3 -Wall -flto -S ../common/eusart1.c
/opt/riscv32i/bin/riscv32-unknown-elf-gcc -march=rv32imc -O3 -Wall -flto -S ../common/delay.c
/opt/riscv32i/bin/riscv32-unknown-elf-gcc -march=rv32imc -O3 -Wall -flto -S test_serial.c
/opt/riscv32i/bin/riscv32-unknown-elf-gcc -march=rv32imc -O3 -Wall -flto -S interrupt_manager.c


#debug
#/opt/riscv32i/bin/riscv32-unknown-elf-gcc -march=rv32imc -O0 -Wall -S -fverbose-asm -g ../common/vargen.c
#/opt/riscv32i/bin/riscv32-unknown-elf-gcc -march=rv32imc -O0 -Wall -S -fverbose-asm -g ../common/eusart1.c
#/opt/riscv32i/bin/riscv32-unknown-elf-gcc -march=rv32imc -O0 -Wall -S -fverbose-asm -g test_serial.c
#/opt/riscv32i/bin/riscv32-unknown-elf-gcc -march=rv32imc -O0 -Wall -S -fverbose-asm -g interrupt_manager.c

#/opt/riscv32i/bin/riscv32-unknown-elf-as -alhnd eusart1.s > eusart1.lst


/opt/riscv32i/bin/riscv32-unknown-elf-gcc -march=rv32imc -O3 -Wall -flto -c vargen.s
/opt/riscv32i/bin/riscv32-unknown-elf-gcc -march=rv32imc -O3 -Wall -flto -c eusart1.s
/opt/riscv32i/bin/riscv32-unknown-elf-gcc -march=rv32imc -O3 -Wall -flto -c delay.s
/opt/riscv32i/bin/riscv32-unknown-elf-gcc -march=rv32imc -O3 -Wall -flto -c test_serial.s
/opt/riscv32i/bin/riscv32-unknown-elf-gcc -march=rv32imc -O3 -Wall -flto -c interrupt_manager.s
/opt/riscv32i/bin/riscv32-unknown-elf-gcc -march=rv32imc -O3 -Wall -flto -c start.S

/opt/riscv32i/bin/riscv32-unknown-elf-gcc -march=rv32imc -Wall -flto -nostartfiles -Wl,-Bstatic,-T,sections.lds,--strip-debug,-Map=firmware.map,--cref \
  -ffreestanding -nostdlib  -o test_serial.elf start.o vargen.o eusart1.o delay.o test_serial.o interrupt_manager.o

#riscv32-unknown-elf-as -march=rv32imc  -o $1.o $1.asm

#riscv32-unknown-elf-ld -Ttext=$2 -o $1.elf $1.o

#/opt/riscv32i/bin/riscv32-unknown-elf-nm $1.elf

/opt/riscv32i/bin/riscv32-unknown-elf-objdump -d test_serial.elf

/opt/riscv32i/bin/riscv32-unknown-elf-objcopy -O ihex test_serial.elf test_serial.hex

./ihex2all test_serial.hex test_serial.hex4
 
