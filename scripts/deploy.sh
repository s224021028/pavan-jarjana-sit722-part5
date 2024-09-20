# Your Solution
set -u
: "$CONTAINER_REGISTRY"
: "$VERSION"

cd scripts/kubernetes
kubectl apply -f deployment.yaml
cd ..