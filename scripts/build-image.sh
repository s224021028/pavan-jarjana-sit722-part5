# Your Solution
set -u
: "$CONTAINER_REGISTRY"
: "$VERSION"

IMAGE1=book-catalog
IMAGE2=inventory-management

cd ..
cd book_catalog
docker build -t $CONTAINER_REGISTRY/$IMAGE1:$VERSION --file Dockerfile .
cd ..
cd inventory_management
docker build -t $CONTAINER_REGISTRY/$IMAGE2:$VERSION --file Dockerfile .
cd ..