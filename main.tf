# Reference: https://registry.terraform.io/providers/mongodb/mongodbatlas/latest/docs/resources/cluster 
resource "mongodbatlas_cluster" "free-cluster" {
  project_id                  = var.project_id
  name                        = var.cluster_name
  provider_name               = "TENANT"
  backing_provider_name       = "AWS"
  provider_region_name        = "US_EAST_1"
  provider_instance_size_name = "M0" // Free tier
}

# Reference: https://registry.terraform.io/providers/mongodb/mongodbatlas/latest/docs/resources/project_ip_access_list
resource "mongodbatlas_project_ip_access_list" "allow-ip" {
  count      = var.ip_address_to_allow == null ? 0 : 1
  project_id = var.project_id
  ip_address = var.ip_address_to_allow
  comment    = "release-source-ip-address"
}

# Reference: https://registry.terraform.io/providers/mongodb/mongodbatlas/latest/docs/resources/database_user
resource "mongodbatlas_database_user" "standard-user" {
  username           = var.username
  password           = var.password
  project_id         = var.project_id
  auth_database_name = "admin"
  roles {
    role_name     = "readWriteAnyDatabase"
    database_name = "admin"
  }
  scopes {
    name = var.cluster_name
    type = "CLUSTER"
  }
}