resource "aws_s3_bucket" "wordpress-backend" {
  bucket = "wordpress-backend"

  tags = {
    Name        = "wordpress_backend"
  }
}
