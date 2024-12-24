# Resource: EC2 Instance
resource "aws_instance" "myEc2vm" {
  ami = "ami-019374baf467d6601"
  instance_type = "t3.micro"
  user_data = file("${path.module}/app1-install.sh")
  tags = {
    "Name" = "EC2 Demo"
  }
}
