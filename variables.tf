variable "aws_instance_type" {
  default = "t2.micro"
  type = string
}
variable "ec2_ami_id" {
  default = "ami-03fd334507439f4d1"
  type = string
}
variable "root_volume_size" {
  default = 10
  type = number
}
