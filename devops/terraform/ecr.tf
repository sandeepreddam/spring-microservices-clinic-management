resource "aws_ecr_repository" "services" {
  for_each = toset([
    "healthcare-eureka",
    "healthcare-patient",
    "healthcare-appointment",
    "healthcare-doctor"
  ])

  name                 = each.value
  image_tag_mutability = "IMMUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = local.common_tags
}