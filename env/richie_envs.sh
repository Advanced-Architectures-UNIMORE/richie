#!/bin/bash
# Copyright (c) 2024 University of Modena and Reggio Emilia
# Author: Gianluca Bellocchi <gianluca.bellocchi@unimore.it>

THIS_DIR=$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")

# User setup
export UNIMORE=1
export IIS=0
export NO_IIS=1

# Environment check
source $THIS_DIR/check_environment.sh
if is_empty_or_undefined $RICHIE_HOME_DIR; then
  echo "Checking initial environment status..."
  source $THIS_DIR/first_check.sh
fi

# Richie Framework
export RICHIE_HOME_DIR=$(realpath $THIS_DIR/..)
# -- Legacy
export HERO_HOME_DIR=$RICHIE_HOME_DIR/third-party/hero
export HERO_INSTALL=$HERO_HOME_DIR/install
export HERO_SDK=$HERO_HOME_DIR
export HERO_SDK_DEV=$HERO_HOME_DIR/pulp/sdk/pkg/sdk/dev/install
export HERO_BENCHMARKS=$HERO_HOME_DIR/openmp-examples
# -- HW
export RICHIE_HW=$RICHIE_HOME_DIR/hw
export RICHIE_PLATFORM=$(grep TARGET_PLATFORM $RICHIE_HOME_DIR/local.cfg | sed 's/.*=//' | sed 's/ //g' | tr -d '"')
# -- SW
export RICHIE_SW=$RICHIE_HOME_DIR/sw
export RICHIE_BENCHMARKS=$RICHIE_SW/benchmarks
# -- Support
export RICHIE_ENVS=$THIS_DIR

# Source setup
echo "Select working environment:"
sel_setup=""
richie_setups=( "vivado_hls_std" "vitis_hls_vision" "fpga_exilzcu102" "rtl_sim" "none" "help")

select yn in "${richie_setups[@]}"; do
  case $yn in
    ${richie_setups[0]} ) source $RICHIE_ENVS/setups/${richie_setups[0]}.sh;
                          sel_setup=${richie_setups[0]};
                          break;;
    ${richie_setups[1]} ) source $RICHIE_ENVS/setups/${richie_setups[1]}.sh;
                          sel_setup=${richie_setups[1]};
                          break;;
    ${richie_setups[2]} ) source $RICHIE_ENVS/setups/${richie_setups[2]}.sh;
                          sel_setup=${richie_setups[2]};
                          break;;
    ${richie_setups[3]} ) source $RICHIE_ENVS/setups/${richie_setups[3]}.sh;
                          sel_setup=${richie_setups[3]};
                          break;;
    ${richie_setups[4]} ) echo "No setup has been retrieved";
                          sel_setup=${richie_setups[4]};
                          break;;
    ${richie_setups[5]} ) echo -e "List of development environments:"
                          echo "- <${richie_setups[0]}> - Vivado HLS 2019.2 (Standard)"
                          echo "- <${richie_setups[1]}> - Vitis HLS 2022.2 (Vitis Vision Library)"
                          echo "- <${richie_setups[2]}> - FPGA development (AMD-Xilinx ZCU102)"
                          echo "- <${richie_setups[3]}> - RTL simulation (QuestaSim 10.6/.5)"
                          echo "Check the Richie documentation for more information: https://richie-docs.readthedocs.io/en/latest/.";;
  esac
done
