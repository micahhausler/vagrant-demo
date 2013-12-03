#!/bin/bash

if [ ! -f /home/vagrant/.setup_complete ] 
then
    echo 'deb http://archive.ubuntu.com/ubuntu precise multiverse' >> /etc/apt/sources.list;
    sudo apt-get update;
    sudo apt-get -y install htop wget curl multitail git vim bash-completion zip unzip;
    sudo apt-get -y install python-pip python-virtualenv python-dev libpq-dev libzmq-dev;

    sudo pip install uwsgi ipython tornado werkzeug jinja2;
    sudo pip install pyzmq matplotlib -b /tmp;

    touch /home/vagrant/.setup_complete;
fi

# iPython notebook, http://ipython.org/notebook.html
# To run ipython notebook, run:
#
# ipython notebook --no-browser --ip=0.0.0.0 --port=8080 --pylab=inline
#
# Once running, go to http://127.0.0.1:8080 on your web browser
