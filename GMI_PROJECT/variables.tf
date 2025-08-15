variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "project_name" {
  type    = string
  default = "elk-eks-demo"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  type    = list(string)
  default = ["10.0.1.0/24"]
}

variable "private_subnet_cidrs" {
  type    = list(string)
  default = ["10.0.2.0/24", "10.0.3.0/24"]
}

variable "availability_zones" {
  type = list(string)
  default = []
}

variable "key_name" {
  description = "Existing AWS key pair name to use for EC2 access"
  type        = string
}

variable "instance_type_elk" {
  type    = string
  default = "t3.large"
}

variable "instance_type_app" {
  type    = string
  default = "t3.medium"
}
