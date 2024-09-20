# Your Solution
set -u
: "$CONTAINER_REGISTRY"
: "$VERSION"
: "$REGISTRY_USERNAME"

IMAGE1=pavan-jarjana-sit722-part5-book_catalog
IMAGE2=pavan-jarjana-sit722-part5-inventory_management

echo $(az acr credential show --name $REGISTRY_USERNAME --query "passwords[0].value" --output tsv) | docker login $CONTAINER_REGISTRY --username $REGISTRY_USERNAME --password-stdin
docker push $CONTAINER_REGISTRY/$IMAGE1:$VERSION
docker push $CONTAINER_REGISTRY/$IMAGE2:$VERSION