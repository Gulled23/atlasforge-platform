output "vpc_id" {
  value = module.vpc.vpc_id
}

output "instance_id" {
  value = module.compute.instance_id
}

output "public_ip" {
  value = module.compute.public_ip
}

output "private_ip" {
  value = module.compute.private_ip
}
