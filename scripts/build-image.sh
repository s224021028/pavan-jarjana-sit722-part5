# Your Solution
set -u
: "$CONTAINER_REGISTRY"
: "$VERSION"

IMAGE1=book-catalog
IMAGE2=inventory-management

docker build -t $CONTAINER_REGISTRY/$IMAGE1:$VERSION --file ./book_catalog/Dockerfile .
docker build -t $CONTAINER_REGISTRY/$IMAGE2:$VERSION --file ./inventory_management/Dockerfile .