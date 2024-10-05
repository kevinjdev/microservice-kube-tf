# resource "aws_s3_bucket" "terraform_state" {
#   bucket = "microservice-kube-tf-state-${data.aws_caller_identity.current}"

#   tags = {
#     Name = "terraform-state-bucket"
#   }

#   lifecycle {
#     prevent_destroy = true
#   }
# }

# resource "aws_s3_bucket_versioning" "terraform_state_versioning" {
#   bucket = aws_s3_bucket.terraform_state.id
#   versioning_configuration {
#     status = "Enabled"
#   }
# }
