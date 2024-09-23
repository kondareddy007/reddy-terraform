resource "aws_instance" "web"{
    #count = 11 # count.index is a special variable provided by terraform
    count = length(var.instance_name)
    ami = var.ami_id
    instance_type = var.instance_name[count.index] == "mongodb" || var.instance_name[count.index] == "mysql" || var.instance_name[count.index] == "shipping" ? "t2.small" : "t2.micro"
    tags = {
      Name = var.instance_name[count.index]
    }
} 

resource "aws_route53_record" "www" {
  #count = 11
  count = length(var.instance_name)
  zone_id = var.zone_id
  name = "${var.instance_name[count.index]}.${var.domain_name}"
  type = "A"
  ttl = 1
  records = [aws_instance.web[count.index] == "web" ? aws_instance.web[count.index].public_ip : aws_instance.web[count.index].private_ip]
}