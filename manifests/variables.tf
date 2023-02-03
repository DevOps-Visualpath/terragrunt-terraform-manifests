locals {
  subnet_common_tags = {
    "kubernetes.io/cluster/var.cluster_name" = "shared"
  }
}

variable "region_name" {
  description = "Region name to launch VPC network"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr_block" {
  description = "VPC network CIDR"
  type        = string
  default     = "10.0.0.0/16"
}

variable "environment" {
  description = "Environment name for deployment"
  type        = string
  default     = "development"
}

variable "public_subnets" {
  description = "Provider public subnets CIDR values"
  type        = list(string)
  default     = ["10.0.0.0/24", "10.0.2.0/24"]
}

variable "private_subnets" {
  description = "Provide private subnets CIDR values"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.3.0/24"]

}

variable "public_az" {
  description = "az names for the public subnets"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]

}
variable "private_az" {
  description = "az names for the private subnets"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]

}

variable "s3_bucket_name" {
  description = "Environment name for deployment"
  type        = string
  default     = "my-tf-test-bucket19239912"
}
#variable "pub_sub_tags" {
#  description = "Provide tags that needs to be as part of EKS network to manage ELB internet-facing"
#  type        = map(any)
#  default = {
#    "kubernetes.io/role/elb" = "1"
#  }
#}
#
#variable "priv_sub_tags" {
#  description = "Provide tags that needs to be as part of EKS network to manage ELB internal-elb"
#  type        = map(any)
#  default = {
#    "kubernetes.io/role/internal-elb" = "1"
#  }
#}