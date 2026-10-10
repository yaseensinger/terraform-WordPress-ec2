variable "tag" {
  type        = string
  description = "tag for this project"
  default     = "WordPress"
}

variable "vpc_cidr" {
  type        = string
  description = "vpc cider"
  default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
  type        = string
  description = "subnet cider"
  default     = "10.0.1.0/28"
}

