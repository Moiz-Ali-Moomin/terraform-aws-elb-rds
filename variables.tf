variable "aws_region" {
	default = "ap-southeast-1"
}

#variable "vpc_cidr" {
#	default = "172.31.0.0/16"
#}

#variable "subnets_cidr" {
#	type = list(string)
#	default = ["172.31.16.0/20", "172.31.0.0/20"]
#}

variable "azs" {
	type = list(string)
	default = ["ap-southeast-1a"]
}

variable "webservers_ami" {
  default = "ami-0e8e39877665a7c92"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "subnet_id" {
 type=list(string)
 default = ["subnet-042ded657db2e5d7f"]
}

variable "sg_id" {
 type=string
 default = "sg-040bb199e4dc62b01"
}

variable "instance_count" {
	default = 1
}

variable "instance_subnet_id" {
    type = string
	default = "subnet-042ded657db2e5d7f"
}