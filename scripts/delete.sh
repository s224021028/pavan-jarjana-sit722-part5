# Your Solution
set -u
: "$CONTAINER_REGISTRY"
: "$VERSION"

cd scripts/kubernetes
kubectl delete -f deployment.yaml