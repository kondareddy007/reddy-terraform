#preferences of variable
#1.Command line 
 # terraform plan -var="instance_type=t3.medium"
#2. -var-file 
  #terraform plan -var-file="roboshop.tfvars"
#3.terraform.tfvats
  #terraform plan
#4. Env variables
   #terraform plan
variable "instance_name" {
    type = string
    default = "mongodb"
  
}
variable "ami_id" {
  type = string
  default = "ami-0b4f379183e5706b9"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "tags" {
  type = map
  default = {
    Name = "Hello, Terraform"
    Project = "Roboshop"
    Environment = "Dev"
    Component = "Web"
    Terraform = "true"
  }
}

variable "sg-name" {
  type = string
  default = "roboshop-all-aws"
}

variable "sg-description" {
  type = string
  default = "Allow TLS inbound traffic"
}

variable "inbound-from_port" {
   default = 0
}
variable "cidr_blocks" {
  type = list
  default = ["0.0.0.0/0"]
}