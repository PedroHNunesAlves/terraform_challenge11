variable "vpc_id" {}

resource "aws_security_group" "ec2-sg" {
  name = "sgEC2"
  description = "Allow ssh inbound for my ip"
  vpc_id = var.vpc_id

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["xxMY_IPxx"]
  }

  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "sgEC2"
  }
}

output "security_group_id" {
  value       = aws_security_group.ec2-sg.id
}
