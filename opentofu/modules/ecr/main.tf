resource "aws_ecr_repository" "main" {
  name = "${var.project_name}-${var.environment}-repo"

  tags = {
    Name        = "${var.project_name}-${var.environment}-ecr-repo"
    Environment = var.environment
  }
}