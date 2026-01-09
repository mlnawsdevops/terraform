data "aws_ami" "rhel9" {
    most_recent = true
    owners = [ "973714476881" ]

    filter {
      name = "name"
      values = ["RHEL-9-DevOps-Practice"]
    }

    filter {
        name = "root-device-type"
        values = [ "ebs" ] #aws filter values are case-sensitive
    }

    filter {
      name = "virtualization-type"
      values = [ "hvm" ]
    }
  
}