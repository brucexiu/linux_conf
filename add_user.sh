#!/usr/bin/env bash

echo "begin to add user $1"
useradd -g users -m -b /home $1 -p $1 -s /bin/bash
echo "add user down"
