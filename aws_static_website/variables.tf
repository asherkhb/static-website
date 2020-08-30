
variable "address" {
  type        = "string"
  description = "Website address (e.g. example.com)"
}

variable "index_document" {
  type        = "string"
  description = "Index document (default: index.html)"
  default     = "index.html"
}

variable "error_document" {
  type        = "string"
  description = "Error document (default: error.html)"
  default     = "error.html"
}

variable "aws_profile" {
  type        = "string"
  description = "AWS profile to provision resources (default: default)"
  default     = "default"
}

variable "aws_region" {
  type        = "string"
  description = "AWS region to provision resources (default: us-east-1)"
  default     = "us-east-1"
}
