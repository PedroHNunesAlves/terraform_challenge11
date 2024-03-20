module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "PedritoVPC"
  cidr = "10.0.0.0/20"

  azs             = ["us-east-1a"]
  private_subnets = ["10.0.2.0/24"]
  public_subnets  = ["10.0.3.0/24"]

  tags = {
    Terraform   = "true"
  }
}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "ec2TerraPedro"

  ami = "ami-0d7a109bf30624c99"
  associate_public_ip_address = true
  instance_type          = "t2.micro"
  key_name               = "pedroteste"
  monitoring             = true
  vpc_security_group_ids = [module.security_group.security_group_id]
  subnet_id              = module.vpc.public_subnets[0]

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

module "security_group" {
  source = "./modules/SecurityGroups"
  vpc_id = module.vpc.vpc_id
}
