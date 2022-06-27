# UPDATE!

This repository is no longer in use by the Puppet SE Team, and will be official Archived on Friday, July 1st. It will then be deleted on Friday, July 15th. If you are using any of the included code in any way, please take efforts to preserver your access to the code at your earlier convenience.

Thanks!  - The Puppetlabs SE Team

# Sample App for Puppet Nebula

Builds a container with MySQL, Nginx, PHP and a PHP website that stores and retrieves images from a database.

Uses Puppet Bolt Tasks and Plans with the new Apply() function to quickly provision all the software, leveraging existing Puppet modules from the Forge.

To deploy:
- Deploy onto a Kubernetes cluster with Puppet Project Nebula
- View the details of the K8s Service for this app to visit the website
