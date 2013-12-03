#!/bin/bash

if [ ! -f /home/vagrant/.setup_complete ] 
then
    echo 'deb http://archive.ubuntu.com/ubuntu precise multiverse' >> /etc/apt/sources.list;
    sudo apt-get update;
    sudo apt-get -y install htop wget curl multitail git vim bash-completion zip unzip;
    sudo apt-get -y install python-pip python-virtualenv python-dev libpq-dev libzmq-dev;

    # Create the virtualenv
    virtualenv venv;
    # activate the virtualenv
    . ./venv/bin/activate
    # install ipython and dependencies into virtualenv
    pip install pyzmq matplotlib -b /tmp;
    pip install uwsgi tornado werkzeug jinja2;
    pip install ipython;

    touch /home/vagrant/.setup_complete;
fi
