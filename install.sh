#!bin/bash
# Quick hacky install script, assumes everything is in the usual spot, use as a guide if unsure

# Make esp_env available on the path
cp ./esp_env.sh $HOME/.local/bin
# Try to add the 'esp' alias
if [[ -d $HOME/.bash_aliases ]]; then
  echo 'alias esp=". esp_env.sh"' >> $HOME/.bash_aliases
fi
# Set up ESP_BASE in the appropriate place
mkdir $HOME/.esp/
echo 'export $ESP_BASE="$HOME/.esp/"' >> $HOME/.bashrc
