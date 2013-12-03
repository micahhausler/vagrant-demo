README
======

This is a demo Vagrant setup that runs ubuntu 12.04 and sets up iPython Notebook

Install
-------

1. (Install Virtualbox)[https://www.virtualbox.org/wiki/Downloads]
2. (Install Vagrant)[http://docs.vagrantup.com/v2/installation/index.html]

Setup
-----

```
$ git clone git@github.com:micahhausler/vagrant-demo.git
$ cd vagrant-demo
$ vagrant up
$ vagrant ssh
vagrant@vagrantbox ~$ ipython notebook --no-browser --ip=0.0.0.0 --port=8080 --pylab=inline
```
