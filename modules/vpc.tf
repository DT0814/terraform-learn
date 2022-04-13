resource "aws_subnet" "eks_subnet_1" {
  vpc_id     = aws_vpc.eks_vpc.id
  cidr_block = "170.31.16.0/20"

  tags = {
    Name = "eks-subnet1"
  }
}
resource "aws_subnet" "eks_subnet_2" {
  vpc_id     = aws_vpc.eks_vpc.id
  cidr_block = "170.31.32.0/20"

  tags = {
    Name = "eks-subnet1"
  }
}

resource "aws_vpc" "eks_vpc" {
  cidr_block = "170.31.0.0/16"
}