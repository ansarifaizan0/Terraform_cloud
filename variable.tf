variable "webserver" {
type = list(string)
default = ["webserver1","webserver2","webserver3" ]
}

variable "instance_type" {
default = "t2.micro"
}
