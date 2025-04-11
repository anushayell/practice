resource "aws_vpc" "main_vcp" {
  cidr_block = var.cidr_block

  tags = {
    Name = "main_vcp"
  }
}
