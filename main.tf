module "vpc" {
  source = "./modules/vpc"
}

module "asg" {
  source = "./modules/auto-scaling-group"  
  ami = var.main-ami
  t2_instance_type = var.main-instance_type  
  key_pair = module.vpc.keypair
  vpc_id = module.vpc.vpc_id
  lt_security_group = module.vpc.web_sg_id
  alb_sg_id = module.vpc.lb_sg_id
  public_subnets = module.vpc.public_subnets_id
}

output "re-exported-dns" {
  value = module.asg.alb_dns_name
  
}
