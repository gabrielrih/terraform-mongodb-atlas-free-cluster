# terraform-mongodb-atlas-free-cluster
Terraform for create a Free Atlas Cluster.

## Develop
### How to set it up 
```sh
export MONGODB_ATLAS_PUBLIC_KEY=""
export MONGODB_ATLAS_PRIVATE_KEY=""
```

### How to run it
```sh
terraform -chdir="./example" init
terraform -chdir="./example" plan
terraform -chdir="./example" apply
```

### How to destroy it
```sh
terraform -chdir="./example" destroy
```

## Production
There is a action workflow that runs in each PR to runs a terraform plan but it also runs when you merge the PR to the main. When you do it, the workflow also runs the terraform apply.