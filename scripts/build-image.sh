# Your Solution
set -u
: "$CONTAINER_REGISTRY"
: "$VERSION"

IMAGE1=pavan-jarjana-sit722-part5-book_catalog
IMAGE2=pavan-jarjana-sit722-part5-inventory_management

cd ..
cd book_catalog
docker build -t $CONTAINER_REGISTRY/$IMAGE1:$VERSION --file Dockerfile .
cd ..
cd inventory_management
docker build -t $CONTAINER_REGISTRY/$IMAGE2:$VERSION --file Dockerfile .
cd ..