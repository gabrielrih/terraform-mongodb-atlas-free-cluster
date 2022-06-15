# terraform-mongodb-atlas-free-cluster
Terraform for create a Free Atlas Cluster.

## How to set it up

``export MONGODB_ATLAS_PUBLIC_KEY=""``

``export MONGODB_ATLAS_PRIVATE_KEY=""``


## How to run it

``terraform -chdir="./example" init``

``terraform -chdir="./example" plan``

``terraform -chdir="./example" apply``

## How to destroy it

``terraform -chdir="./example" destroy``

## Extra commands

``terraform -chdir="./example" output``