output "arn" {
  value       = aws_security_group.ipa_clients.arn
  description = "The security group ARN"
}

output "id" {
  value       = aws_security_group.ipa_clients.id
  description = "The security group ID"
}
