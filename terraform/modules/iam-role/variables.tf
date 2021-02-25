variable "tags" {
  description = "AWS resource tags"
  type = map(string)
  default = {}
}

variable "role_name" {
  description = "IAM role name"
  type = string
}
