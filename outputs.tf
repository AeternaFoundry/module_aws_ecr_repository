output "ecr_repositories_id" {
  description = "Map of id values across all ecr_repositories, keyed the same as var.ecr_repositories"
  value       = { for k, v in aws_ecr_repository.ecr_repositories : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ecr_repositories_arn" {
  description = "Map of arn values across all ecr_repositories, keyed the same as var.ecr_repositories"
  value       = { for k, v in aws_ecr_repository.ecr_repositories : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "ecr_repositories_encryption_configuration" {
  description = "Map of encryption_configuration values across all ecr_repositories, keyed the same as var.ecr_repositories"
  value       = { for k, v in aws_ecr_repository.ecr_repositories : k => v.encryption_configuration if v.encryption_configuration != null && length(v.encryption_configuration) > 0 }
}
output "ecr_repositories_force_delete" {
  description = "Map of force_delete values across all ecr_repositories, keyed the same as var.ecr_repositories"
  value       = { for k, v in aws_ecr_repository.ecr_repositories : k => v.force_delete if v.force_delete != null }
}
output "ecr_repositories_image_scanning_configuration" {
  description = "Map of image_scanning_configuration values across all ecr_repositories, keyed the same as var.ecr_repositories"
  value       = { for k, v in aws_ecr_repository.ecr_repositories : k => one(v.image_scanning_configuration) if v.image_scanning_configuration != null && length(v.image_scanning_configuration) > 0 }
}
output "ecr_repositories_image_tag_mutability" {
  description = "Map of image_tag_mutability values across all ecr_repositories, keyed the same as var.ecr_repositories"
  value       = { for k, v in aws_ecr_repository.ecr_repositories : k => v.image_tag_mutability if v.image_tag_mutability != null && length(v.image_tag_mutability) > 0 }
}
output "ecr_repositories_image_tag_mutability_exclusion_filter" {
  description = "Map of image_tag_mutability_exclusion_filter values across all ecr_repositories, keyed the same as var.ecr_repositories"
  value       = { for k, v in aws_ecr_repository.ecr_repositories : k => v.image_tag_mutability_exclusion_filter if v.image_tag_mutability_exclusion_filter != null && length(v.image_tag_mutability_exclusion_filter) > 0 }
}
output "ecr_repositories_name" {
  description = "Map of name values across all ecr_repositories, keyed the same as var.ecr_repositories"
  value       = { for k, v in aws_ecr_repository.ecr_repositories : k => v.name if v.name != null && length(v.name) > 0 }
}
output "ecr_repositories_region" {
  description = "Map of region values across all ecr_repositories, keyed the same as var.ecr_repositories"
  value       = { for k, v in aws_ecr_repository.ecr_repositories : k => v.region if v.region != null && length(v.region) > 0 }
}
output "ecr_repositories_registry_id" {
  description = "Map of registry_id values across all ecr_repositories, keyed the same as var.ecr_repositories"
  value       = { for k, v in aws_ecr_repository.ecr_repositories : k => v.registry_id if v.registry_id != null && length(v.registry_id) > 0 }
}
output "ecr_repositories_repository_url" {
  description = "Map of repository_url values across all ecr_repositories, keyed the same as var.ecr_repositories"
  value       = { for k, v in aws_ecr_repository.ecr_repositories : k => v.repository_url if v.repository_url != null && length(v.repository_url) > 0 }
}
output "ecr_repositories_tags" {
  description = "Map of tags values across all ecr_repositories, keyed the same as var.ecr_repositories"
  value       = { for k, v in aws_ecr_repository.ecr_repositories : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "ecr_repositories_tags_all" {
  description = "Map of tags_all values across all ecr_repositories, keyed the same as var.ecr_repositories"
  value       = { for k, v in aws_ecr_repository.ecr_repositories : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

