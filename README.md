# Service deployement for an brand site

It uses docker-compose and docker. A whole site would be deployed and launched
in one command. A docker swarm can be used to manage the cluster.

The base folder contains the Compose configuration. Each subfolder contains
the configuration to build a service.


* Redis latest
* Nginx latest
* Postgres 9.5
* PostGis 2.3
* Python 3.5
* Django 1.10


For the developper:

.. code-block:: bash
  docker-compose -f development.yml build
  docker-compose -f development.yml up
  Ctrl+c
  docker-compose -f development.yml start

In production:
.. code-block:: bash
  docker-compose build
  docker-compose up
  Ctrl+c
  docker-compose start
