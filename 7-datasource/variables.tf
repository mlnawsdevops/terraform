variable "sg_name" {
    type = string
    default = "allow-ssh"
}

variable "sg_description" {
    type = string
    default = "allow ssh port number 22"
}

variable "from_port" {
    type = number
    default = 22
}

variable "to_port" {
    type = number
    default = 22
}

variable "protocol" {
    type = string
    default = "tcp"
}

variable "ingress_cidr" {
    type = list(string)
    default = [ "0.0.0.0/0" ]
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "instance_names" {
    type = list(string)
    default = ["mysql", "backend", "frontend"]
}

variable "common_tags" {
    type = map 
    default = {
        Project = "expense"
        Environment = "dev"
        Component = "backend"       
    }
  
}

variable "environment" {
    type = string
    default = "dev"
}