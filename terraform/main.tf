module "user" {
  source = "./modules/iam-user"
  name = "test-user"
}

module "role" {
  source = "./modules/iam-role"
  role_name = "test-role"
}

module "group" {
  source = "./modules/iam-group"
  name = "test-group"
  roles = [module.role.arn]
  users = [module.user.name]
}
