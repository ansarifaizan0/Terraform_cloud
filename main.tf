resource "local_file" "faizan" {
  for_each = toset(var.webserver)  # Convert list to set
  
  filename = "${path.module}/${each.value}.txt"  # Correct syntax
  content  = "This is ${each.value}"              # Required attribute
}

#variable "webserver" {
 # type    = list(string)  # Correct type
  #default = ["webserver1", "webserver2", "webserver3"]  # Correct syntax
#}
