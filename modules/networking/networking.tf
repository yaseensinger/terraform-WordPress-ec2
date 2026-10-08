resource "aws_vpc" "wordpress_vpc" {
    cidr_block = "10.0.0.0/16"
    tags = {
      Name =  "wordpress"

    }
    }
resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.wordpress_vpc
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "wordpress"
  }
}
