resource "aws_security_group" "terraform" {
    name = "allow-ssh"
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
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = [ "::/0" ]
    }

    tags = merge(
        var.common_tags,
        {
            Name = "allow-ssh"
        }
    )
}

resource "aws_instance" "terraform" {
    for_each = var.instances
    ami = var.ami_id
    vpc_security_group_ids = [ aws_security_group.terraform.id ]
    instance_type = each.value

    tags = merge(
        var.common_tags,
        {
            Name = each.key
        }
    )
}