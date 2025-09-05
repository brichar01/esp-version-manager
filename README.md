# ESP-IDF version manager
Tool to manage the version of esp-idf needed for an application, uses two files:
esp_install_ver.sh
- This installs the requested version of esp into a directory defined by ESP_BASE (defualts to ~/.esp)
esp_env.sh
- This looks for a file called '.esp_ver' in the current directory and the ESP_BASE environment variable and uses it to determine what the required version of esp to source is and sources it... duh

## Usage
- Run esp_install_ver.sh [VERSION_NUMBER] (in a project that already has a .esp_ver, run with no args to install the correct version for the application) to install the version of esp-idf required for a project
- Create an .esp_ver file with just VERSION_NUMBER in it
- Once installed use . esp_env.sh to source the correct esp version for the current project directory (from the same directory as the .esp_ver file)

## Installation
- Add 'export ESP_BASE="$HOME/.esp"' to your bash profile, (.profile, .bashrc or .bash_profile), alternatively, use the ESP_BASE path you want to use for installs. 
- Copy esp_env.sh and esp_install_ver.sh to your path (eg. ~/.local/bin/)
- Alternatively, use the install.sh script, which sets everything up for default install.
