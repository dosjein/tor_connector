#!/bin/sh


# ------------------------------------------
# Add Envimental Setup for Aliases
# ------------------------------------------
echo 'Add Envimental Setup for Aliases'

if [ ! -f ~/.bashrc ]
then
    echo "source /.alias" >> ~/.bashrc
fi


# ------------------------------------------
# Start TOR Service
# ------------------------------------------
service tor start;

# ------------------------------------------
# Infinite HostTail
# ------------------------------------------
tail -F -n0 /etc/hosts