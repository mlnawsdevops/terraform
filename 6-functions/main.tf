resource "aws_security_group" "allow-ssh" {
    name = var.sg_name
    description = var.sg_description

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = [ "0.0.0.0/0" ]
        ipv6_cidr_blocks = [ "::/0" ]
    }

    ingress {
        from_port = var.from_port
        to_port = var.to_port
        protocol = var.protocol
        cidr_blocks = var.ingress_cidr
        ipv6_cidr_blocks = [ "::/0" ]
    }

    tags = var.tags
  
}


resource "aws_instance" "terraform" {
    ami = var.ami_id
    #instance_type = expression == "prod" ? "true" : "false"
    instance_type = var.environment == "prod" ? "t3.small" : "t3.micro"
    vpc_security_group_ids = [ aws_security_group.allow-ssh.id ]
    # count = 3
    count = length(var.instance_names)

    tags = merge(
        var.tags,
        {
            Name = var.instance_names[count.index] #count.index=0-value
        }
    )
  
}