# Sample App for Puppet Nebula

Builds a container with MySQL, Nginx, PHP and a PHP website that stores and retrieves images from a database.

Uses Puppet Bolt Tasks and Plans with the new Apply() function to quickly provision all the software, leveraging existing Puppet modules from the Forge.

To deploy:
- Deploy onto a Kubernetes cluster with Puppet Project Nebula
- View the details of the K8s Service for this app to visit the website
