# Resource: EC2 Instance
resource "aws_instance" "myEc2vm" {
  ami = "ami-0eb26da1d86aecc88 "
  instance_type = "t3.micro"
  user_data = file("${path.module}/app1-install.sh")
  tags = {
    "Name" = "EC2 Demo"
  }
}
