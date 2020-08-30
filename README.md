# Static Website

Terraform modules for static websites on various cloud platforms.

Developed on Terraform 0.13+, might work on other versions but not tested.

## AWS

Use the `aws_static_website` module to provision a website on AWS using S3 & Route53.

```hcl
module "my_website" {
  source = "./aws_static_website"
  address = "example.com"
}
```

## Contributing

Contributions are welcome! 

Contribute via PR. To keep code consistant, please use `terraform fmt` _before_ opening a PR.

## Help?

If you need help, please open an issue.
