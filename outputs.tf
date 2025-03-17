# for single instnce

# output "ec2_public_ip" {
#   value = aws_instance.my-instance.public_ip
# }

# output "ec2_private_ip" {
#   value = aws_instance.my-instance.private_ip
# }

# output "ec2_public_dns" {
#   value = aws_instance.my-instance.public_dns
# }

#for multiple instance

output "ec2_public_ip" {
  value = aws_instance.my-instance[*].public_ip
}

output "ec2_private_ip" {
  value = aws_instance.my-instance[*].private_ip
}

output "ec2_public_dns" {
  value = aws_instance.my-instance[*].public_dns
}
