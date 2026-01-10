variable "instances" {
    type = map
    default = {
        mysql = "t3.small"
        backend = "t3.micro"
        frontend = "t3.micro"
    }
}

variable "zone_id" {
    type = string
    default = "Z02305702LFJSCAA8YV7Q"
}

variable "domain_name" {
    type = string
    default = "daws100s.online"
}

variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "common_tags" {
    type = map
    default = {
        Project = "expense"
        Environment = "dev"
        Component = "backend"
        Terraform = "true"
    }
}