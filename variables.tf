# General Variables
#region
variable "region" {
  description = "Default region for provider"
  type        = string
  default     = "us-west-2"
}

#instance_type
variable "instance_type" {
  description = "ec2 instance type"
  type        = string
  default     = "t2.micro"
}

#key_pair name
variable "key_name" {
  description = "ec2 keypair name"
  type        = string
  default     = "aws_key" #give keypair name in aws 
}


#username
variable "username" {
  description = "aws username"
  type        = string
  default     = "ec2-user" #give user-name
}

#profile
variable "profile" {
  description = "aws profile name"
  type        = string
  default     = "test" #give profile name
}