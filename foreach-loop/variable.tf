variable "ami_id" {
    type = string
    default = "ami-0b4f379183e5706b9"
}

variable "instance_name" {
    type = map
    
    default = {
       mongodg = "t2.small"
       redis   = "t2.micro"
       robbitmq = "t2.micro"
       mysql    = "t2.micro"
       web      = "t2.micro"
       catalogue = "t2.micro"
       cart      = "t2.micro"
       user      = "t2.micro"
       paymemts  = "t2.micro"
       shipping  = "t2.micro"
       despatch  = "t2.micro"
    }

}

variable "zone_id" {
    default = "Z0377619BZ9H3MTGWVQN"
  
}

variable "domain_name" {
  default = "reddy1229.online"
}