provider "aws" {
  region = "us-west-1"
}

#-------------------------------------------------------------------------------
# Data source to get the default VPC.
#-------------------------------------------------------------------------------
data "aws_vpc" "default" {
  default = true
}

#-------------------------------------------------------------------------------
# Configure the module.
#-------------------------------------------------------------------------------
module "ipa_client_security_group" {
  source = "../../"

  ipa_server_cidr_blocks = ["100.10.23.1/32"]
  vpc_id                 = data.aws_vpc.default.id
  tags = {
    key = "Value"
  }
}
