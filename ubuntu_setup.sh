#!/bin/bash

if [ ! -f /home/vagrant/.setup_complete ]
then
    echo 'deb http://archive.ubuntu.com/ubuntu precise multiverse' >> /etc/apt/sources.list;
    sudo apt-get update;
    sudo apt-get -y install htop wget curl multitail git vim bash-completion zip unzip;
    #sudo apt-get -y install libfreetype6-dev gcc libpng12-dev;
    sudo apt-get -y install python-pip python-dev libpq-dev libzmq-dev;
    sudo apt-get -y install python-numpy python-scipy python-matplotlib;
    sudo pip install virtualenv virtualenv-tools;

    # Create the virtualenv
    virtualenv --system-site-packages venv;
    # activate the virtualenv
    . ./venv/bin/activate
    # install ipython, matplotlib, & django (and dependencies) into virtualenv
    easy_install -U distribute;
    #pip install pyzmq matplotlib -b /tmp/vagrant;
    pip install uwsgi tornado werkzeug jinja2 pyzmq -b /tmp/vagrant;
    pip install ipython django -b /tmp/vagrant;

    echo "source ./venv/bin/activate" >>  .bashrc;

    touch /home/vagrant/.setup_complete;
    chown -R vagrant:vagrant ./venv .setup_complete /tmp/vagrant;
fi
