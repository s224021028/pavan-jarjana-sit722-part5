# Your Solution
set -u
: "$CONTAINER_REGISTRY"
: "$VERSION"
: "$REGISTRY_USERNAME"
: "$REGISTRY_PASSWORD"

IMAGE1=book-catalog
IMAGE2=inventory-management

echo $REGISTRY_PASSWORD | docker login $CONTAINER_REGISTRY --username $REGISTRY_USERNAME --password-stdin
docker push $CONTAINER_REGISTRY/$IMAGE1:$VERSION
docker push $CONTAINER_REGISTRY/$IMAGE2:$VERSION