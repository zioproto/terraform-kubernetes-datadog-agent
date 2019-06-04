resource "kubernetes_service_account" "datadog_agent" {
  metadata {
    name      = "datadog-agent"
    namespace = "default"
  }
}

