aws_region = "us-east-2"

required_tags = {
  "Project"     = "Microservice-Kubernetes"
  "DeployedBy"  = "Terraform"
  "Environment" = "Dev"
}

cluster_name         = "dev-microservice-kube"
fargate_profile_name = "dev-microservice-kube-fargate-profile"
namespace            = "default"
