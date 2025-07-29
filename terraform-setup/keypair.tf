resource "aws_key_pair" "manas_key" {
  key_name   = "my-key"
  public_key = file("${path.module}/manas-terraform-learning.pub")
}
