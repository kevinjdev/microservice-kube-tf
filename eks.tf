module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = var.cluster_name
  cluster_version = "1.30"
  vpc_id          = aws_vpc.vpc.id
  subnet_ids      = [aws_subnet.private_subnet_a, aws_subnet.private_subnet_b]

  fargate_profiles = {
    fargate-default = {
      name = var.fargate_profile_name
      selectors = [
        {
          namespace = var.namespace
        }
      ]
    }
  }
}
