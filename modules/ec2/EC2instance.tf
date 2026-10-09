resource "aws_instance" "wordpress_ec2" {
    instance_type = "t3.micro"
    ami = "ami-06468be052a4195a6"
    
}