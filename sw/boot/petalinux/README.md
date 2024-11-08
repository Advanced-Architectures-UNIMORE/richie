# Petalinux

## How to build the Petalinux project
A Makefile is provided with recipes to build the Petalinux project and update target boards with new Petalinux images and FPGA bitstreams. 
Some arguments are exposed to the user to specify that target board and bitstream:

- `TARGET_BOARD`: *Target board*, where the default is `zcu102` (AMD-Xilinx ZCU102);
- `TARGET_VER`: *Target version*, where the default is `2019_2` (tool version 2019.2);

## Build Petalinux
Run the following command to compile Petalinux:

```sh
make build_petalinux
```

During the build phase, the Petalinux project is built. 
In the end, images acn be collected in the `output` directory, running:

```sh
make update_output
```

## Update images with a new bitstream (partial rebuild)
Run the following command to update the Petalinux project with a new bitstream:

```sh
make update_bitstream
```

## Update board environment
Run the following command to deploy an updated version of the images and bitstream to the target board:

```sh
make update_boardenv
```

Once new files are exported, the board can be re-booted with `make reboot_zcu102`. 