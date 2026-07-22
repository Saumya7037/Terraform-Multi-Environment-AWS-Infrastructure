#key pair

resource "aws_key_pair" "my_aws_key" {
  key_name   = "my-key"
  public_key = file("C:/Users/saumy/OneDrive/Desktop/cloudengineer/teraform project/terra-key.pub")

}

resource "aws_default_vpc" "default" {

}

#security group

resource "aws_security_group" "my-aws-sg" {
  name   = "allow-access"
  vpc_id = aws_default_vpc.default.id
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }


}

#ec2

resource "aws_instance" "my_instance" {
  count           = var.instance_count
  ami             = var.ami_id
  instance_type   = var.instance_type
  key_name        = aws_key_pair.my_aws_key.key_name
  security_groups = [aws_security_group.my-aws-sg.name]
  tags = {
    Name = "${var.my-env}-my-aws-ec2-instance"
  }

}

