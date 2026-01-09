variable "sg_name" {
    type = string
    default = "allow-ssh"
}

variable "sg_description" {
    type = string
    default = "allow ssh  port number 22"
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

variable "common_tags" {
    type = map

}

variable "instance_names" {
    type = list(string)
    default = [ "mysql", "backend", "frontend" ]
}

variable "environment" {
    type = string
    default = "prod"
}

# variable "domain_name" {
#     type = string
#     default = "daws100s.online"
# }

# variable "zone_id" {
#     type = string
#     default = "Z02305702LFJSCAA8YV7Q"
# }

