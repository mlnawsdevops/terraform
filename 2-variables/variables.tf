#real time using variables.tf instead of hardcoding the values in main code

#variable prefernces
# 1. command line
# 2. terraform.tfvars
# 3. Environment variables #TF_VAR_instance_type=t3.micro
# 4. default variables
# 5. prompt

variable "ami_id" {
    type = string
    description = "rhel-9 ami id"
    default = "ami-09c813fb71547fc4f"  
}

variable "instance_type" {
    type = string
    description = "server instance type"
    default = "t3.micro"  
}

variable "tags" {
    type = map
    default = {
        Name = "backend"
        Project = "expense"
        component = "backend"
        Environment = "Dev"
        Terraform = "true"
    } 
}

variable "sg_name" {
    default = "allow_ssh"
    type = string 
}

variable "sg_description" {
    default = "allow ssh port number 22"
    type = string
}

variable "from_port" {
    default = 22
    type = number
}

variable "to_port" {
    default = 22
    type = number
}

variable "protocol" {
    default = "tcp"
    type = string
}

variable "ingress_cidr" {
    type = list(string)
    default = [ "0.0.0.0/0" ]
}