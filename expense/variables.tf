variable "common_tags" {
    type = map 
    default = {
        Project = "expense"
        Environment = "dev"
        Component = "backend"
        Terraform = "true"
    }
  
}

variable "sg_name" {
    type = string
    default = "allow-ssh"
}

variable "sg_description" {
    type = string
    default = "allow port number 22"
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
  
}

variable "instance_names" {
    type = list(string)
    default = [ "mysql", "backend", "frontend" ]
}

variable "zone_id" {
    default = "Z02305702LFJSCAA8YV7Q"
}

variable "domain_name" {
    default = "daws100s.online"
}
