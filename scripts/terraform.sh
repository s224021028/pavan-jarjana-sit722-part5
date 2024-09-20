set -u
: "$ARM_CLIENT_ID"
: "$ARM_SUBSCRIPTION_ID"
: "$ARM_TENANT_ID"

cd scripts/terraform
terraform init
terraform plan -out=tfplan
terraform apply -auto-approve tfplan