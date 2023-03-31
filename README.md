# terraform-mongodb-atlas-free-cluster
Terraform for create a Free Atlas Cluster.

## Develop
### How to set it up 
```sh
export MONGODB_ATLAS_PUBLIC_KEY=""
export MONGODB_ATLAS_PRIVATE_KEY=""
export TF_TOKEN_app_terraform_io= ""
```

> We are using [Terraform Cloud](https://app.terraform.io/app) to export the state remotelly so _TF_TOKEN_app_terraform_io_ must have the token to authenticate to your Terraform Cloud account ([Reference](https://developer.hashicorp.com/terraform/cli/config/config-file#credentials)).

### How to run it
```sh
terraform init
terraform plan -var-file="example.tfvars"
terraform apply -var-file="example.tfvars"
```

### How to destroy it
```sh
terraform destroy -var-file="example.tfvars"
```

## Production
There is a action workflow that runs in each PR to runs a terraform plan but it also runs when you merge the PR to the main. When you do it, the workflow also runs the terraform apply.