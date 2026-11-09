
variable "bucket_name" {
  description = "Descriptive name of the S3 bucket"
  type        = string
  default     = "acme-storage"
}

variable "team" {
  description = "Team responsible for this resource"
  type        = string
  default     = "Engineering"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"

  validation {
    condition = contains(
      ["dev", "staging", "prod"],
      var.environment
    )
    error_message = "Environment must be dev, staging, or prod."
  }
}
