variable "tags" {
  description = "AWS resource tags"
  type = map(string)
  default = {}
}

variable "name" {
  description = "IAM user name"
  type = string
}
