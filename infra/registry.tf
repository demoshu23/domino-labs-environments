resource "aws_ecr_repository" "domino_env" {
  name                 = "domino-ml-env"
  image_tag_mutability = "IMMUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}