variable vpc_cidr {
  description = "The CIDR block for the VPC."
  type        = string
  default = "10.0.0.0/16"

}
variable "vpc_tags" {
    type = map
    default = {}  
}

variable "igw_tags" {
  type = map
  default = {}
}

variable "project" {
  description = "The name of the project for tagging purposes."
  type        = string  
}

variable "environment" {
  description = "The environment for tagging purposes (e.g., dev, staging, prod)."
  type        = string
  validation {
    condition     = contains(["dev", "qa","uat", "prod"], var.environment)
    error_message = "Environment must be one of 'dev', 'qa', 'uat', or 'prod'."
  }
}

variable "public_subnet_cidrs" {
  type        = list
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "public_subnet_tags" {
    type = map
    default = {}  
}

variable "private_subnet_cidrs" {
  type        = list
  default     = ["10.0.11.0/24", "10.0.12.0/24"]
}

variable "private_subnet_tags" {
    type = map
    default = {}  
}

variable "database_subnet_cidrs" {
  type        = list
  default     = ["10.0.21.0/24", "10.0.22.0/24"]
}

variable "database_subnet_tags" {
    type = map
    default = {}  
}

variable "public_route_table_tags" {
    type = map
    default = {}  
}

variable "private_route_table_tags" {
    type = map
    default = {}  
}

variable "database_route_table_tags" {
    type = map
    default = {}  
}