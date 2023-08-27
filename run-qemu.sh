#! /bin/bash

qemu-system-x86_64 \
	-m 4096 \
	-drive if=pflash,format=raw,file=/home/wqy/workspace/osdev/rootfs/OVMF_CODE.fd,readonly=on \
	-drive if=pflash,format=raw,file=/home/wqy/workspace/osdev/rootfs/OVMF_VARS.fd,readonly=on \
	-drive format=raw,file=fat:rw:/home/wqy/workspace/osdev/rootfs/esp \
	-net none \
	-debugcon file:debug.log -global isa-debugcon.iobase=0x402 \
	-nographic
