README
======

This is a demo Vagrant setup that runs ubuntu 12.04 and sets up iPython Notebook

Install
-------

1. [Install Virtualbox](https://www.virtualbox.org/wiki/Downloads)
2. [Install Vagrant](http://docs.vagrantup.com/v2/installation/index.html)

Setup
-----

```
$ git clone git@github.com:micahhausler/vagrant-demo.git
$ cd vagrant-demo
$ vagrant up
$ vagrant ssh
vagrant@vagrantbox ~$ source ./venv/bin/activate
vagrant@vagrantbox ~$ ipython notebook --no-browser --ip=0.0.0.0 --port=8080 --pylab=inline
```

Use
---

In your local browser, go to http://127.0.0.1:8080, and you'll be in the iPython Notebook

Turn Off
--------

```
$ cd vagrant-demo
$ vagrant halt
```

iPython Notebook info
---------------------
http://ipython.org/notebook.html
