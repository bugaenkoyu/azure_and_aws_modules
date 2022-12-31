variable "instance_type" {
  default = "t2.micro"
}

variable "ami" {
  default = "ami-06ce824c157700cd2"
}

variable "allow_ports" {
  type    = list(any)
  default = ["443", "80", "22"]

}

variable "tags_owner" {
  default = "Yurii Bugaenko"
}

variable "tags_instance_name" {
  default = "AWS server build by Terraform"
}

variable "tags_security_group_name" {
  default = "AWS security group build by Terraform"
}

variable "protocol" {
  default = "tcp"
}

variable "aws_security_group_name" {
  default = "sg_aws_server2"
}

variable "aws_security_group_description" {
  default = "Allow traffic through port"
}

variable "ingress_description" {
  default = "TLS from VPC: port 443, 80, 22"
}

variable "aws_instance_user_data" {
  default = "data/grafana.sh"
}