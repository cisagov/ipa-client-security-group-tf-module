# ipa-client-security-group-tf-module #

[![Build Status](https://travis-ci.com/cisagov/ipa-client-security-group-tf-module.svg?branch=develop)](https://travis-ci.com/cisagov/ipa-client-security-group-tf-module)

A [Terraform module](https://www.terraform.io/docs/modules/index.html)
for creating an AWS security group suitable for an IPA client.  This
security group allows traffic to the IPA server via the necessary
ports.

## Usage ##

```hcl
module "example" {
  source = "github.com/cisagov/ipa-client-security-group-tf-module"

  aws_region            = "us-west-1"
  aws_availability_zone = "b"
  subnet_id             = "subnet-0123456789abcdef0"

  tags = {
    Key1 = "Value1"
    Key2 = "Value2"
  }
}
```

## Examples ##

* [Deploying into the default VPC](https://github.com/cisagov/ipa-client-security-group-tf-module/tree/develop/examples/default_vpc)

## Inputs ##

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-------:|:--------:|
| ipa_server_cidr_blocks | A list of CIDR blocks containing the IPA servers to which the clients will be allowed to connect (e.g. [100.10.1.23/32, 101.45.32.89/32]) | list(string) | | yes |
| vpc_id | The ID of the AWS VPC where the security group will live (e.g. vpc-0123456789abcdef0) | string | | yes |
| tags | Tags to apply to all AWS resources created | map(string) | `{}` | no |

## Outputs ##

| Name | Description |
|------|-------------|
| id | The security group ID |
| arn | The security group ARN |

## Contributing ##

We welcome contributions!  Please see [here](CONTRIBUTING.md) for
details.

## License ##

This project is in the worldwide [public domain](LICENSE).

This project is in the public domain within the United States, and
copyright and related rights in the work worldwide are waived through
the [CC0 1.0 Universal public domain
dedication](https://creativecommons.org/publicdomain/zero/1.0/).

All contributions to this project will be released under the CC0
dedication. By submitting a pull request, you are agreeing to comply
with this waiver of copyright interest.
