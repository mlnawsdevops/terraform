variable "sg_name" {
    default = "allow-ssh"
    type = string
}

variable "sg_description" {
    default = "allow ssh port number 22"
    type = string
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

variable "ami_id" {
    type = string
  
}

variable "instance_type" {
    type = string
    default = "t3.small"
}

variable "tags" {
    type = map 
    default = {
        Project = "expense"
        Component = "backend"
        Environment = "SIT"
        Terraform = "true"
    }
  
}

variable "environment" {
    default = "dev"
  
}

