
sudo apt -y install build-essential nasm qemu

rm -rf build

exit 1 | mkdir build && cd build
exit 1 | nasm -f elf32 -o asm.o ../00.asm
exit 1 | gcc -m32 -o c.o -c ../00.c
exit 1 | ld -m elf_i386 -o kernel asm.o c.o -T ../00.ld

qemu-system-i386 -kernel kernel

