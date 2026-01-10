resource "aws_security_group" "terraform" {
    name = "terraform-ssh"
    description = "allow ssh port number 22"
  
    egress {
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = [ "0.0.0.0/0" ]
        ipv6_cidr_blocks = [ "::/0" ]
    }

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = [ "0.0.0.0/0" ]
        ipv6_cidr_blocks = [ "::/0" ]
    }

    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = [ "0.0.0.0/0" ]
        ipv6_cidr_blocks = [ "::/0" ]
    }

    tags = {
        Name = "terraform-sg"
    }
}


resource "aws_instance" "terraform" {
    count = 1
    ami = "ami-09c813fb71547fc4f"
    vpc_security_group_ids = [ aws_security_group.terraform.id ]
    instance_type = "t3.micro"

    tags = {
        Name = "terraform-ec2"
    }

    #in this case mylaptop is local

    provisioner "local-exec" {
        command = "echo ${self.private_ip} > private_ip.txt"
      
    }

    connection {
        type = "ssh"
        user = "ec2-user"
        password = "DevOps321"
        host = self.public_ip
    }

    #provisioners will execute at the time of creation
    provisioner "remote-exec" {
        inline = [ 
            "sudo dnf install ansible -y",
            "sudo dnf install nginx -y",
            "sudo systemctl start nginx"
         ] 
    }

    #will stop nginx server when we run the terraform destroy
    provisioner "remote-exec" {
        when = destroy
        inline = [ 
            "sudo systemctl stop nginx"
         ]
      
    }
}


##Points
#1. connect server and run anisble --version and systemctl status nginx
#2. browse with Public_ip to view the nginx page