variable "image_version" {
  description = "Datadog Agent Container Image Version"
  default = "latest"
}

variable "dd_api_key" {
  description = "Datadog API key."
  type        = "string"
}
