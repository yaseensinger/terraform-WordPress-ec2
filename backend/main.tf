resource "aws_s3_bucket" "wordpress_backend" {
  bucket = "terraform-wordpress-state-430758392527-eu-west-1"
  region = "eu-west-1"

  tags = {
    Name        = "wordpress-backend"
  }
}