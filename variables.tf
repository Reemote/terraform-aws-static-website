variable "name" {
  type        = string
  description = "Name of the static website stacks, for example: my-website, my-website-staging, ashari.com, andi.ashari.me"
}

variable "default_tags" {
  type        = map(string)
  default     = {}
  description = "Default tags to apply to all resources"
}

variable "default_root_object" {
  type        = string
  default     = "index.html"
  description = "Default root object to serve"
}

variable "default_not_found_page" {
  type        = string
  default     = "index.html"
  description = "Default not found page"
}

variable "cloudfront_access_log_bucket" {
  type        = string
  default     = ""
  description = "Cloudfront access log bucket name"
}

variable "cloudfront_access_log_enable_cookies" {
  type        = bool
  default     = true
  description = "Enable CloudFront access logs to include cookies"
}

variable "cloudfront_function_file_path" {
  type        = string
  default     = ""
  description = "Path to the CloudFront function file"
}

variable "cloudfront_function_runtime" {
  type        = string
  default     = "cloudfront-js-1.0"
  description = "CloudFront function runtime"
}

variable "cloudfront_function_type" {
  type        = string
  default     = "viewer-request"
  description = "CloudFront function event type to trigger"
}

variable "custom_domain_provider" {
  type        = string
  default     = ""
  description = "Custom domain provider name"
}

variable "custom_domain_records" {
  type        = list(string)
  default     = []
  description = "Custom domain records name to use for CloudFront distribution, use `@` to use the zone domain name"
}

variable "custom_domain_zone_id" {
  type        = string
  default     = ""
  description = "Domain Provider zone ID which custom domain is registered to"
}

variable "custom_domain_ttl" {
  type        = number
  default     = 300
  description = "Custom domain TTL"
}

variable "cloudflare_api_token" {
  type        = string
  default     = ""
  description = "Cloudflare API token"
}

variable "s3_bucket_name" {
  type        = string
  default     = ""
  description = "S3 Bucket Name"
}

variable "cloudfront_enable_cors" {
  type        = bool
  default     = false
  description = "If true AWS managed policy 'CORS-with-preflight-and-SecurityHeadersPolicy' will be added"
}
