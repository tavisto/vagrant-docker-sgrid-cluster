vagrant-sgrid-cluster
=====================

Selenium Grid Cluster using Vagrant and Docker

Ported to CentOS from [benchw's ](https://github.com/benschw/vagrant-selenium-grid) build in Ubuntu.

## Uses a CentOS base server to fire up docker, then docker to fire up a grid cluster.

        vagrant up
You may have to run the provisiner one more time since building the docker images tends to time out.

        vagrant provision

this will boot up the grid cluster and build the boxes.

        vagrant ssh
        cd /vagrant/docker/
        sudo ./grid.sh start

You are now ready to use the grid cluster with whatever selenium client you want.
