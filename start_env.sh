#! /bin/sh

# Source - https://stackoverflow.com/a/23558932
# Posted by Thomas Uhrig, modified by community.
# See post 'Timeline' for change history
# Retrieved 2026-11-10, License - CC BY-SA 4.0
if  [[ ! -v OS_ENV ]]; then 
    echo "Starting IIC-OSIC-Tools Container"
    # Run the container using this script as 
    distrobox enter iic-osic-tools \
        --additional-flags "-e OS_ENV=container" \
        -- bash --init-file $0
    exit
fi
echo "Environment Startup"
source /etc/profile

alias ls='ls --color=auto'
alias grep='grep --color=always'
export PS1="\[$(tput bold)\]\[$(tput setaf 3)\]\[$(tput setaf 3)\]\u\[$(tput setaf 4)\]@\[$(tput setaf 3)\]OSIC-tools \[$(tput setaf 4)\]\W\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
sak-pdk-script.sh sky130A
