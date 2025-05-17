terraform {
  backend "s3" {
    bucket         = "vishnu-tf-enterprise-state"
    key            = "dev/vpc/terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "terraform-locks"
  }
}
