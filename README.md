# wordpress-swarm-setup
Complete setup for wordpress swarm

Installs docker swarm mode with Portainer template use to create wordpress containers that is scalable and share same NFS storage for both DB and PHP files.
DB must stay to 1 replica, while wordpress containers can be scaled to any number.
