#!/bin/sh

# Configuracion
KERNEL_CONFIG=imx_v7_var_defconfig
DTB_CONFIG='imx6ul-var-dart-emmc_wifi.dtb imx6ul-var-dart-nand_wifi.dtb imx6ul-var-dart-sd_emmc.dtb imx6ul-var-dart-sd_nand.dtb imx6ull-var-dart-emmc_wifi.dtb imx6ull-var-dart-sd_emmc.dtb imx6ull-var-dart-nand_wifi.dtb imx6ull-var-dart-sd_nand.dtb imx6ul-var-dart-5g-emmc_wifi.dtb imx6ull-var-dart-5g-emmc_wifi.dtb imx6ul-var-dart-5g-nand_wifi.dtb imx6ull-var-dart-5g-nand_wifi.dtb'

ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make mrproper
ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make ${KERNEL_CONFIG}
ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make zImage
ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make ${DTB_CONFIG}

