# locals {
#   instance_type = var.instance_name[count.index] == "mongodb" || var.instance_name[count.index] == "mysql" || var.instance_name[count.index] == "shipping" ? "t2.small" : "t2.micro"

#   instance_ip = aws_instance.web[count.index] == "web" ? aws_instance.web[count.index].public_ip : aws_instance.web[count.index].private_ip
# }