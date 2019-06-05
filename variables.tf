variable "image_version" {
  description = "Datadog Agent Container Image Version"
  default     = "latest"
}

variable "dd_enable" {
  description = "Set to 1 to enable creation of Datadog monitors"
  type        = "string"
  default     = "0"
}

variable "dd_api_key" {
  description = "Datadog API key."
  type        = "string"
}
