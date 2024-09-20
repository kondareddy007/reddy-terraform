resource "aws_instance" "web" {
  ami = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.roboshop-all.id]

  tags = {
    Name = "Hello terraform"
  }
}

resource "aws_security_group" "roboshop-all" {  #this is terraform name
  name = var.sg-name
  description = var.sg-description
  #vpc_id      = aws_vpc.main.id  #if you not privide it will take default VPC

  ingress {
    description = "Allow all ports"
    from_port = var.inbound-from_port # 0 means allow all ports
    to_port = 0
    protocol = "tcp"
    cidr_blocks = var.cidr_blocks
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "roboshop-all-aws"
  }
}