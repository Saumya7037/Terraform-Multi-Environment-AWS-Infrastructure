module "my-dev" {
  source         = "./terraform-module"
  my-env         = "dev"
  instance_type  = "t2.micro"
  ami_id         = "ami-01a00762f46d584a1"
  instance_count = 2
}

module "my-prod" {
  source         = "./terraform-module"
  my-env         = "prod"
  instance_type  = "t2.micro"
  ami_id         = "ami-01a00762f46d584a1"
  instance_count = 3
}

module "my-stg" {
  source         = "./terraform-module"
  my-env         = "stg"
  instance_type  = "t2.micro"
  ami_id         = "ami-01a00762f46d584a1"
  instance_count = 2
}
