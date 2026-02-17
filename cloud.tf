

# Create a local file
resource "local_file" "demo" {
  filename = "${path.module}/demo.txt"
  content  = "Hello from Terraform Cloud! \nServer: ${var.server_name}\nEnv: ${var.environment}"
}

# Create multiple files using for_each
resource "local_file" "webservers" {
  for_each = toset(var.webserver)
  filename = "${path.module}/${each.value}.txt"
  content  = "This is ${each.value} running in ${var.environment}"
}
