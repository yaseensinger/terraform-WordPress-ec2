resource "aws_instance" "terraform-import" {
  ami                     = "ami-087fc0fcee2c7570a"
  instance_type           = var.instance_type
  tags = {
    Name = "terraform import"
  }
  user_data_replace_on_change = false 
}