resource "aws_s3_bucket" "my-bucket-new-1asdasdad" {
  bucket = "${var.env}-${var.bucket_name}"

  tags = {
    Name= "${var.env}-${var.bucket_name}"
    Enviroment = var.env
  }
}
