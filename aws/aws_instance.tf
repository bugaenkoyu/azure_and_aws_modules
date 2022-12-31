
resource "aws_instance" "aws_server2" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.aws_server2.id]
  user_data              = file(var.aws_instance_user_data)

  tags = {
    Name  = var.tags_instance_name
    Owner = var.tags_owner
  }
}