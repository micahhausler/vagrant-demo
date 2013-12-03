#!/bin/bash

if [ ! -f /home/vagrant/.setup_complete ] 
then
    echo 'deb http://archive.ubuntu.com/ubuntu precise multiverse' >> /etc/apt/sources.list;
    sudo apt-get update;
    sudo apt-get -y install htop wget curl multitail git vim bash-completion zip unzip;
    sudo apt-get -y install python-pip python-virtualenv python-dev libpq-dev libzmq-dev;

    # Activate the virtualenv
    virtualenv venv;
    . ./venv/bin/activate
    pip install uwsgi ipython tornado werkzeug jinja2;
    pip install pyzmq matplotlib -b /tmp;

    touch /home/vagrant/.setup_complete;
fi
