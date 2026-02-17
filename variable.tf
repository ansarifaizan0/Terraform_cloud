variable "webserver" {
type = list(string)
default = ["webserver-1","webserver2","webserver3" ]
}

variable "instance_type" {
default = "t2.micro"
}
