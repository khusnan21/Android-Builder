#!/bin/bash

if [ -f /$HOME/swapfile ]  
then
    echo "swap file exist"
else
    sudo fallocate -l 32G /$HOME/swapfile
    sudo chmod 600 /$HOME/swapfile
    sudo mkswap /$HOME/swapfile
fi
sudo swapon /$HOME/swapfile
#sudo bin/act -P catthehacker/ubuntu:full-latest