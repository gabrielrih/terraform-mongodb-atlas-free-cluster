output "cluster_id" {
  description = "The cluster ID."
  value       = module.example.cluster_id
}

output "mongo_uri" {
  description = "Base connection string for the cluster. Atlas only displays this field after the cluster is operational, not while it builds the cluster."
  value       = module.example.mongo_uri
}

output "srv_address" {
  description = "Connection string for connecting to the Atlas cluster. The +srv modifier forces the connection to use TLS/SSL. See the mongoURI for additional options."
  value       = module.example.srv_address
}

output "connection_strings" {
  description = "Set of connection strings that your applications use to connect to this cluster."
  value       = module.example.connection_strings
}

output "state_name" {
  description = "Current state of the cluster."
  value       = module.example.state_name
}