#!/bin/bash

cd /linux
source /opt/codex/rm11x/3.1.15/environment-setup-cortexa7hf-neon-remarkable-linux-gnueabi
make mrproper
touch .scmversion
cp arch/arm/configs/zero-sugar_defconfig .config
make olddefconfig
make drivers/misc/rm-pogo/pogo.ko
make modules_prepare
