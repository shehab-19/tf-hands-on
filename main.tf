module "vpc" {
  source = "./modules/vpc"
}

module "asg" {
  source = "./modules/auto-scaling-group"  
  ami = var.main-ami
  t2_instance_type = var.main-instance_type  

}

