resource "aws_security_group" "cluster_sg" {
  name        = "cluster-security-group"
  description = "Allow all inbound, all outbound"

  ingress {
    description = "Allow all inbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name      = "cluster-sg"
    ManagedBy = "Terraform"
  }
}
