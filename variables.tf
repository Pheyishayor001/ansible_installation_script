# no default value is given. the values are defined in the terraform.tfvars file
variable "instance_name" {
  description = "value of the Name tag"
  type        = string
  default     = ""
}

variable "ec2_instance_type" {
  description = "AWS EC2 instance type."
  type        = string
  default     = ""
}

variable "region" {
  description = "AWS EC2 region."
  type        = string
  default     = ""
}

variable "instance_configurations" {
  type = map(object({
    name      = string
    user_data = string
  }))
}