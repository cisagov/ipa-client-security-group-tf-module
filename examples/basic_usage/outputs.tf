output "arn" {
  value       = module.ipa_client_security_group.arn
  description = "The security group ARN"
}

output "id" {
  value       = module.ipa_client_security_group.id
  description = "The security group ID"
}
