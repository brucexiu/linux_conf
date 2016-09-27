#!/usr/bin/env bash

function get_linux_version()
{
    linux_version=`lsb_release -d | gawk -F"\t" '{print $2}'`  
    if [[ $linux_version == Ubuntu* ]]  
    then
        linux_version="ubuntu"
    elif [[ $linux_version == CentOS* ]]  
    then
        linux_version="centos"
    else
        linux_version="unknwon"
    fi
    echo $linux_version
}

function command_install()
{
    if [[ $1 == ubuntu ]]  
    then
        for package in libxslt  libffi gcc  openssl jq libxml2-dev libxslt1-dev python-dev tmux parallel
        do
            echo "begin to install $package"
            apt-get install $package
        done
    elif [[ $1 == centos ]]  
    then
        yum install libxslt-devel  libffi libffi-devel  python-devel gcc  openssl openssl-devel mysql-devel jq tmux
    fi
}

function python_install()
{
    python get-pip.py
    pip install scrapy beautifulsoup4 redis MySQL-python gevent requests pep8
}

linux_version=`get_linux_version`
if [[ $1 == unknown ]]  
then
    echo "unknown linux version"
    exit
fi

command_install $linux_version
python_install 
