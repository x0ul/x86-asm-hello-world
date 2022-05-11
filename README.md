# Compile
`nasm -f bin -o boot.bin boot.asm`

# Run
`qemu-system-i386 -fda boot.bin`
