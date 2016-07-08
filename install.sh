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
        installer="apt-get"
        dev="dev"
    elif [[ $1 == centos ]]  
        installer="yum"
        dev="devel"
    fi
    $installer install libxslt-$dev  libffi libffi-$dev  python-$dev gcc  openssl openssl-$dev mysql-$dev jq
}

function python_install()
{
    python get_pip.py
    pip install scrapy beautifulsoup4 redis MySQL-python gevent requests
}

linux_version=`get_linux_version`
if [[ $1 == unknown ]]  
then
    echo "unknown linux version"
    exit
fi

command_install $linux_version
python_install 
