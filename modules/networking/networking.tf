resource "aws_vpc" "wordpress_vpc" {
    cidr_block = "10.0.0.0/16"
    tags = {
      Name =  var.tag

    }
    }

  #public subnet 
resource "aws_subnet" "wordpress_subnet" {
  vpc_id     = aws_vpc.wordpress_vpc.id
  cidr_block = var.vpc_cidr

  tags = {
    Name = var.tag
  }
}

resource "aws_internet_gateway" "wordpress_gw" {
  vpc_id = aws_vpc.wordpress_vpc.id

  tags = {
    Name = var.tag
  }
}

resource "aws_route_table" "public_rout" {
  vpc_id = aws_vpc.wordpress_vpc.id


  route {
    cidr_block = var.subnet_cidr
    gateway_id = aws_internet_gateway.wordpress_gw.id
  }

tags = {
Name = var.tag
  }
}

resource "aws_route_table_association" "wp_rout_table_association" {
      subnet_id      = aws_subnet.wordpress_subnet.id
      route_table_id = aws_route_table.public_rout.id
  
}
