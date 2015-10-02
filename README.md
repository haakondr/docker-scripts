# docker-scripts
convenience scripts for british eyes only

## push-images-to-repo.sh

Pushes all images with tags to a given docker registry

``./push-tags-to-repo.sh <host_registry>``

requires a docker registry running at <host_registry>

## docker-copy-image.sh

Copies an image from local machine to remote over ssh. If only git hash is supplied, the docker tag will not be copied. Best to use this script with docker tag instead of hash.

``./docker-copy-image.sh <docker tag> <remote machine>``

Requires remote machine with ssh server running
