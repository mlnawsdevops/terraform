#locals can store expressions  and terraform run them and gets the values
locals {
    domain_name = "daws100s.online"
    zone_id = "Z02305702LFJSCAA8YV7Q"
    instance_type = (var.instance_names[count.index] == "mysql" && var.environment == "prod") ? "t3.small" : "t3.micro"
    #count.index will not work in locals
}