variable "env" {
  description = "envroment name"
  type = string
}
variable "bucket_name" {
  description = "bucket name"
  type = string
  
}
variable "ec2_count" {
   description = "instance count"
   type = number
}
variable "ec2_type" {
  description = "instance type"
  type = string
  
}
variable "ec2_ami_id" {
  description = "ami id"
  type = string
  
}
variable "hash_key" {
  description = "hash key"
  type = string
}
variable "name" {
  description = "name of the instance"
  type = string
  
}