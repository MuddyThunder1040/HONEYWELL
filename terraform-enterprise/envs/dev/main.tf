provider "aws" {
  region = "us-west-2"
}

module "vpc" {
  source = "../../modules/vpc"

  env                   = "dev"
  vpc_cidr              = "10.10.0.0/16"
  public_subnet_cidrs   = ["10.10.1.0/24", "10.10.2.0/24"]
  private_subnet_cidrs  = ["10.10.11.0/24", "10.10.12.0/24"]
  azs                   = ["us-west-2a", "us-west-2b"]
}

module "ec2" {
  source         = "../../modules/ec2"
  env            = "dev"
  ami_id         = "ami-01c6b1b360c9a5d67"  # ✅ new valid AMI for us-west-2
  instance_type  = "t2.micro"
  vpc_id         = module.vpc.vpc_id
  subnet_id      = module.vpc.public_subnet_ids[0]
}
