module "dev-infra" {
  source = "./infra-app"
  env = "dev"
  bucket_name = "infra-bucket1"
  ec2_count = 1
  ec2_type = "t2.micro"
  ec2_ami_id = "ami-0df368112825f8d8f"
  hash_key = "student_id"
  name = "infra-instance"
}
module "prod-infra" {
  source = "./infra-app"
  env = "prod"
  bucket_name = "infra-bucket2"
  ec2_count = 2
  ec2_type = "t2.nano"
  ec2_ami_id = "ami-0df368112825f8d8f"
  hash_key = "student_id"
  name = "infra-instance"
}
