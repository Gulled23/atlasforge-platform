variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "project_name" {
  description = "Project name"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "public_subnet_1" {
  description = "CIDR block for public subnet 1"
  type        = string
}

variable "public_subnet_2" {
  description = "CIDR block for public subnet 2"
  type        = string
}

variable "private_subnet_1" {
  description = "CIDR block for private subnet 1"
  type        = string
}

variable "private_subnet_2" {
  description = "CIDR block for private subnet 2"
  type        = string
}

variable "admin_ip" {
  description = "Admin IP allowed for SSH access"
  type        = string
}
