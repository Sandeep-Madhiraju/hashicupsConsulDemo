output "env" {
  value = random_string.env.result
}

output "gcp_shared_svcs_network_self_link" {
  value = module.gcp-vpc-shared-svcs.network_self_link
}
