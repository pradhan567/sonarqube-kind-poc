resource "aws_instance" "kind-cluster" {
  ami                  = "ami-020cba7c55df1f615"
  instance_type        = "t2.medium"
  availability_zone    = "us-east-1a"
  key_name             = aws_key_pair.manas_key.key_name
  security_groups      = [aws_security_group.cluster_sg.name]
  user_data            = file("${path.module}/kind-installation.sh")
  tags = {
    Name      = "kind-cluster"
    ManagedBy = "Terraform"
  }
}

