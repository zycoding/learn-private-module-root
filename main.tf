provider "aws" {
  region = var.region
}

module "s3-webapp" {
  # Modules from the private registry can be referenced using a registry source address of the form app.terraform.io/<ORGANIZATION-NAME>/terraform/<NAME>/<PROVIDER>
  source  = "app.terraform.io/zycoding/s3-webapp/aws"
  name    = var.name
  region  = var.region
  prefix  = var.prefix
  version = "1.0.1"
}