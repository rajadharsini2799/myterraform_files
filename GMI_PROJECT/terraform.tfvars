# Project Details
project_name           = "GMI_PROJECT"

# VPC
vpc_cidr               = "10.0.0.0/16"

# Subnets
public_subnet_cidrs    = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnet_cidrs   = ["10.0.101.0/24", "10.0.102.0/24"]

# Availability Zones
availability_zones     = ["us-east-1a", "us-east-1b"]

# EC2 instance types
instance_type_elk      = "t3.medium"
instance_type_app      = "t3.medium"
