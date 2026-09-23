output "ecr_repository_urls" {
  description = "ECR repository URLs for the healthcare microservices"

  value = {
    for name, repository in aws_ecr_repository.services :
    name => repository.repository_url
  }
}