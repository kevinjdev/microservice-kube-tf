module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = var.cluster_name
  cluster_version = "1.31"
  vpc_id          = aws_vpc.vpc.id
  subnet_ids      = [aws_subnet.private_subnet_a.id, aws_subnet.private_subnet_b.id]

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

  enable_cluster_creator_admin_permissions = true

  tags = var.required_tags
}
