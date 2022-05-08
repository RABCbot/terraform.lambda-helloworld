variable "region" {
  description = "AWS Region where your lambda will be deployed"
  type        = string
}

variable "credentials_file" {
  description = "AWS CLI credentials file location"
  type        = string
  default     = "~/.aws/credentials"
}

variable "profile" {
  description = "Named profile in the AWS CLI credentials"
  type        = string
  default     = "default"
}
