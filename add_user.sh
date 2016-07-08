#!/usr/bin/env bash

echo "begin to add user $1"
useradd -g users -m -b /home $1
passwd $1
echo "add user down"
