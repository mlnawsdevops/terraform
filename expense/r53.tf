resource "aws_route53_record" "expense" {
    count = length(var.instance_names)
    zone_id = var.zone_id
    ttl = 1
    type = "A" 
    #mysql.daws100s.online #backend.daws100s.online #frontend.daws100s.online
    name = "${var.instance_names[count.index]}.${var.domain_name}"
    records = [aws_instance.terraform[count.index].private_ip]
    allow_overwrite = true
}