module "example" {
  source              = "../"
  project_id          = "62a91310a30761611b2c4e1a"
  cluster_name        = "test-tf"
  ip_address_to_allow = "45.161.99.117"
  username            = "default-username-for-testing"
  password            = "123abc456"
}