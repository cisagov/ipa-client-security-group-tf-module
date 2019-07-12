# ------------------------------------------------------------------------------
# Create an AWS security group suitable for IPA clients.
# ------------------------------------------------------------------------------

# Security group for IPA clients
resource "aws_security_group" "ipa_clients" {
  vpc_id = var.vpc_id

  description = "Security group for IPA clients"
  tags        = var.tags
}

# TCP egress rules for IPA
resource "aws_security_group_rule" "ipa_tcp_egress" {
  count = length(local.ipa_tcp_ports)

  security_group_id = aws_security_group.ipa_clients.id
  type              = "egress"
  protocol          = "tcp"
  cidr_blocks       = var.ipa_server_cidr_blocks
  from_port         = local.ipa_tcp_ports[count.index]
  to_port           = local.ipa_tcp_ports[count.index]
}

# UDP egress rules for IPA
resource "aws_security_group_rule" "ipa_udp_egress" {
  count = length(local.ipa_udp_ports)

  security_group_id = aws_security_group.ipa_clients.id
  type              = "egress"
  protocol          = "udp"
  cidr_blocks       = var.ipa_server_cidr_blocks
  from_port         = local.ipa_udp_ports[count.index]
  to_port           = local.ipa_udp_ports[count.index]
}
