module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = "microservice-eks-fargate-cluster"
  subnets         = [aws_subnet.private_subnet_a.name, aws_subnet.private_subnet_b.name]
  vpc_id          = aws_vpc.vpc.id
  cluster_version = "1.31"
  fargate_profile = {
    eks_cluster_name = "microservice-eks-fargate-cluster"
    subnets          = [aws_subnet.private_subnet_a.name, aws_subnet.private_subnet_b.name]
  }
}