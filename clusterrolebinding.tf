resource "kubernetes_cluster_role_binding" "datadog_agent" {
  metadata {
    name = "datadog-agent"
  }

  subject {
    kind      = "ServiceAccount"
    name      = "datadog-agent"
    namespace = "default"
  }

  role_ref {
    api_group = "rbac.authorization.k8s.io"
    kind      = "ClusterRole"
    name      = "datadog-agent"
  }
}

