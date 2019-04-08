rm -rf build

exit 1 | mkdir build && cd build

nasm ../boot.asm -f bin -o boot.bin && qemu-system-i386 -fda boot.bin
