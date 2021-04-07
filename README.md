# pimcore-dev

Environment for local development and testing in kubernetes.


## Requirements

This environment will use a kubernetes cluster. Also for local development you will need a local kubernetes cluster.
You can use the standard kubernetes cluster running in your docker installation for that.

Make sure, that the kubectl commands can be executed.


## Requirements

Setup for local development use docker-sync for syncing local files into the container.

Follow the install process:
https://docker-sync.readthedocs.io/en/latest/getting-started/installation.html

## Installation

* Copy files into your pimcore root directory.
* Copy the .env.sample file to .env
* Change the environment variables if necessary

## Run

```
bash start.sh

# or

docker-sync-stack start
```
