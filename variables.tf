variable "ecr_repositories" {
  description = <<EOT
Map of ecr_repositories, attributes below
Required:
    - name
Optional:
    - force_delete
    - image_tag_mutability
    - region
    - tags
    - tags_all
    - encryption_configuration (block):
        - encryption_type (optional)
        - kms_key (optional)
    - image_scanning_configuration (block):
        - scan_on_push (required)
    - image_tag_mutability_exclusion_filter (block):
        - filter (required)
        - filter_type (required)
EOT

  type = map(object({
    name                 = string
    force_delete         = optional(bool)
    image_tag_mutability = optional(string)
    region               = optional(string)
    tags                 = optional(map(string))
    tags_all             = optional(map(string))
    encryption_configuration = optional(list(object({
      encryption_type = optional(string)
      kms_key         = optional(string)
    })))
    image_scanning_configuration = optional(object({
      scan_on_push = bool
    }))
    image_tag_mutability_exclusion_filter = optional(list(object({
      filter      = string
      filter_type = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.ecr_repositories : (
        v.image_tag_mutability_exclusion_filter == null || (length(v.image_tag_mutability_exclusion_filter) <= 5)
      )
    ])
    error_message = "Each image_tag_mutability_exclusion_filter list must contain at most 5 items"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

