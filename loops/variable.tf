variable "ami_id" {
    type = string
    default = "ami-0b4f379183e5706b9"
}

variable "instance_name" {
    type = list
    default = [ "mongodg","redis","robbitmq","mysql","web","catalogue","cart","user","paymemts","shipping","despatch"]

}

variable "zone_id" {
    default = "Z0377619BZ9H3MTGWVQN"
  
}

variable "domain_name" {
  default = "reddy1229.online"
}