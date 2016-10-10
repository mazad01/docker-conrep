# docker-conrep
Bios configuration with Conrep in a container

You can use this container to set BIOS state on HP Enterprise hardware
as an alternative to other config management tools, such as Puppet/Chef/Ansible.


# How-to

## Pull an already-built image

This image is built automatically on Quay with each push to GitHub.

* Github: https://github.com/mazad01/docker-conrep
* Image: https://quay.io/repository/mazad01/conrep

Pull a built image like this:

    docker pull quay.io/mazad01/conrep


## Inspect labels on built image

Query all the labels inside a built image:

    docker inspect quay.io/mazad01/conrep | jq -M '.[].Config.Labels'


## Run a built image as a container

    docker run \
      --rm \
      --read-only \
      --privileged \
      --cap-add=all \
      quay.io/mazad01/conrep


## Build locally

    docker build --rm -t conrep .


# Licenses

By using this image, you are accepting the terms of the
"HP Proliant Essentials Software End User License Agreement".

View the licenses:

    docker run --rm -t quay.io/mazad01/conrep \
      cat \
      /opt/hp/hp-scripting-tools/hp-scripting-tools.license \
      /opt/hp/hp-health/hp-health.license
