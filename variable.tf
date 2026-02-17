# variable.tf
variable "server_name" {}
variable "environment" {}
variable "webserver" {
  type = list(string)
}
