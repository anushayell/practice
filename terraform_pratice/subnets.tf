resource "aws_subnet" "public_1a" {
  vpc_id            = aws_vpc.main_vcp.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "${var.aws_region}a"

  tags = {
    Name = "public-subnet-1a"
  }
}

resource "aws_subnet" "public_1b" {
  vpc_id            = aws_vpc.main_vcp.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "${var.aws_region}b"

  tags = {
    Name = "public-subnet-1b"
  }
}

resource "aws_subnet" "private_2a" {
  vpc_id            = aws_vpc.main_vcp.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "${var.aws_region}a"

  tags = {
    Name = "private-subnet-2a"
  }
}

resource "aws_subnet" "private_2b" {
  vpc_id            = aws_vpc.main_vcp.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "${var.aws_region}b"

  tags = {
    Name = "private-subnet-2b"
  }
}
