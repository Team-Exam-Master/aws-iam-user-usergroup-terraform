##########################################################
# [module] - iam_group_membership
##########################################################

output "dev_group_name" {
  value = module.dev_group.group_name
}

output "infra_group_name" {
  value = module.infra_group.group_name
}

output "dev_group_user_names" {
  value = module.dev_group.user_names
}

output "infra_group_user_names" {
  value = module.infra_group.user_names
}

output "dev_group_encrypted_passwords" {
  value = module.dev_group.formatted_decrypted_passwords
}

output "infra_group_encrypted_passwords" {
  value = module.infra_group.formatted_decrypted_passwords
}

##########################################################
# [module]-iam_role                                         
##########################################################

output "bastion_role_arn" {
  value = module.weasel-bastion-role.role_arn
}

output "bastion_role_name" {
  value = module.weasel-bastion-role.role_name
}

##########################################################
# [module]-network                                         
##########################################################

output "vpc_id" {
  value = module.network.vpc_id
}

output "public_subnet_ids" {
  value = module.network.public_subnet_ids
}

output "private_subnet_ids" {
  value = module.network.private_subnet_ids
}

output "eip_id" {
  description = "The ID of the Elastic IP address."
  value       = module.network.eip_id
}

output "internet_gateway_id" {
  value = module.network.internet_gateway_id
}

output "nat_gateway_id" {
  value = module.network.nat_gateway_id
}

output "public_route_table_id" {
  value = module.network.public_route_table_id
}

##########################################################
# [module]-ecr                              
##########################################################

output "ecr_name" {
  value = module.weasel_backend_ecr.ecr_name
}

##########################################################
# [module]-secyruty_group                       
##########################################################


output "bastion_sg_id" {
  value = module.bastion_security_group.security_group_id
}

output "web_sg_id" {
  value = module.web_security_group.security_group_id
}

output "rds_sg_id" {
  value = module.rds_security_group.security_group_id
}

##########################################################
# [module]-rds                     
##########################################################