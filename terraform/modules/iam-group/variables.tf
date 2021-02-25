variable "name" {
  description = "IAM group name"
  type = string
}

variable "roles" {
  description = "List of IAM roles assumable by group members"
  type = list
}

variable "users" {
  description = "List of IAM users with group members"
  type = list
}
