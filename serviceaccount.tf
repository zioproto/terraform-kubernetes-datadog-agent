resource "kubernetes_service_account" "datadog_agent" {
  count = "${var.dd_enable}"

  metadata {
    name      = "datadog-agent"
    namespace = "default"
  }
}
