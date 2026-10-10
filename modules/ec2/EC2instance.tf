resource "aws_instance" "wordpress_ec2" {
    instance_type = "t3.micro"
    ami = "ami-06468be052a4195a6"
    subnet_id = var.subnet_id
    vpc_security_group_ids = [var.security_group_id]

    user_data = <<-EOF
        #!/bin/bash
        apt-get update
        apt-get install -y apache2
        ystemctl enable --now apache2

    EOF
}