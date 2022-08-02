#ami
data "aws_ami" "app_ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

# Resource-1: Create EC2 Instance
resource "aws_instance" "VIJAY-TERRAFORM" {
  ami                         = data.aws_ami.app_ami.id
  instance_type               = var.instance_type
  key_name                    = var.key_name
  subnet_id                   = aws_subnet.my-public-subnet.id
  vpc_security_group_ids      = [aws_security_group.public-SG.id]
  associate_public_ip_address = true
  iam_instance_profile        = aws_iam_instance_profile.vijay_profile.name
  user_data                   = file("userdata.sh")

  tags = {
    "Name" = "VIJAY-TERRAFORM"
  }
}
