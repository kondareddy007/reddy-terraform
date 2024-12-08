resource "aws_instance" "web"{
    
    for_each = var.instance_name
    ami = var.ami_id
    instance_type = each.value
    tags = {
      Name = each.key
    }
}