resource "aws_instance" "web"{
    
    for_each = var.instance_name
    ami = var.ami_id
    instance_type = each.value
    tags = {
      Name = each.key
    }
} 

# resource "aws_route53_record" "www" {
#   #count = 11
#   count = length(var.instance_name)
#   zone_id = var.zone_id
#   name = "${var.instance_name[count.index]}.${var.domain_name}"
#   type = "A"
#   ttl = 1
#   records = [aws_instance.web[count.index] == "web" ? aws_instance.web[count.index].public_ip : aws_instance.web[count.index].private_ip]
# }

resource "aws_route53_record" "www" {
  for_each = aws_instance.web
  zone_id = var.zone_id
  name = "${each.key}.${var.domain_name}"
  type = "A"
  ttl = 1
  records = [each.key == "web" ? each.value.public_ip : each.value.private_ip]
}


# output "for_each_info" {
#   value = aws_instance.web
# }