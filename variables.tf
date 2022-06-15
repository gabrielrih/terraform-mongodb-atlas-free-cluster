# Reference: https://registry.terraform.io/providers/mongodb/mongodbatlas/latest/docs/resources/cluster
variable "project_id" {
  description = "(Required) The unique ID for the project to create the database user."
  type        = string
}

variable "cluster_name" {
  description = "(Required) Name of the cluster as it appears in Atlas. Once the cluster is created, its name cannot be changed."
  type        = string
}

variable "ip_address_to_allow" {
  description = "(Required) Single IP address to be added to the access list."
  type        = string
  default     = null
}

variable "username" {
  description = "(Required) Username for authenticating to MongoDB"
  type        = string
}

variable "password" {
  description = "(Required) User's initial password."
  type        = string
}