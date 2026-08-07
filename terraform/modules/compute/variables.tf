variable "ami_id" {
  description = "AMI ID"
  type        = string
}


variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}


variable "public_subnet_id" {
  description = "Public subnet ID"
  type        = string
}


variable "security_group_id" {
  description = "Security group ID"
  type        = string
}


variable "key_name" {
  description = "SSH key pair name"
  type        = string
}


variable "project_name" {
  type = string
}


variable "environment" {
  type = string
}
