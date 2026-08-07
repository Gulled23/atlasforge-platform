module "vpc" {
  source = "./modules/vpc"

  project_name = "atlasforge"
  environment  = "dev"

  vpc_cidr = "10.0.0.0/16"

  public_subnet_1 = "10.0.1.0/24"
  public_subnet_2 = "10.0.2.0/24"

  private_subnet_1 = "10.0.10.0/24"
  private_subnet_2 = "10.0.20.0/24"

  admin_ip = "145.40.130.252/32"
}


module "compute" {

  source = "./modules/compute"

  ami_id = "ami-0b9932f4918a00c4f"

  instance_type = "t3.micro"

  public_subnet_id = module.vpc.public_subnet_1_id

  security_group_id = module.vpc.public_web_security_group_id

  key_name = "atlasforge-dev-key"

  project_name = "atlasforge"

  environment = "dev"
}
