# Your Solution
set -u
: "$CONTAINER_REGISTRY"
: "$VERSION"

IMAGE1=pavan-jarjana-sit722-part5-book_catalog
IMAGE2=pavan-jarjana-sit722-part5-inventory_management

docker push $CONTAINER_REGISTRY/$IMAGE1:$VERSION
docker push $CONTAINER_REGISTRY/$IMAGE2:$VERSION