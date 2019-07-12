# ------------------------------------------------------------------------------
# REQUIRED PARAMETERS
#
# You must provide a value for each of these parameters.
# ------------------------------------------------------------------------------

variable "vpc_id" {
  description = "The ID of the AWS VPC where the security group will live (e.g. vpc-0123456789abcdef0)"
}

variable "ipa_server_cidr_blocks" {
  type        = list(string)
  description = "A list of CIDR blocks containing the IPA servers to which the clients will be allowed to connect (e.g. [100.10.1.23/32, 101.45.32.89/32])"
}

# ------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
#
# These parameters have reasonable defaults.
# ------------------------------------------------------------------------------

variable "tags" {
  type        = map(string)
  description = "Tags to apply to all AWS resources created"
  default     = {}
}
