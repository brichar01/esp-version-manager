#!/bin/bash

## ensure installation prerequisites
sudo apt-get install git wget flex bison gperf python3 python3-pip python3-venv cmake ninja-build ccache libffi-dev libssl-dev dfu-util libusb-1.0-0

# grab env
if [[ -z "$ESP_BASE" ]]; then
  ESP_BASE="$HOME/.esp"
fi

echo "Attempting to install ESP-IDF version $1 to $ESP_BASE/v$1"

if [[ -d "$ESP_BASE/v$1" ]]; then
  echo "Already installed!"
  exit 1 
fi

INSTALL_DIR=$ESP_BASE/v$1

mkdir $INSTALL_DIR

git clone -b v$1 --recursive https://github.com/espressif/esp-idf.git $INSTALL_DIR/esp/

export IDF_TOOLS_PATH=$INSTALL_DIR/.espressif

bash -c $INSTALL_DIR/esp/install.sh
