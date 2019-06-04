resource "kubernetes_cluster_role" "datadog_agent" {
  metadata {
    name = "datadog-agent"
  }

  rule {
    verbs      = ["get", "list", "watch"]
    api_groups = [""]
    resources  = ["services", "events", "endpoints", "pods", "nodes", "componentstatuses"]
  }

  rule {
    verbs      = ["get", "list"]
    api_groups = ["quota.openshift.io"]
    resources  = ["clusterresourcequotas"]
  }

  rule {
    verbs          = ["get", "update"]
    api_groups     = [""]
    resources      = ["configmaps"]
    resource_names = ["datadogtoken", "datadog-leader-election"]
  }

  rule {
    verbs      = ["create"]
    api_groups = [""]
    resources  = ["configmaps"]
  }

  rule {
    verbs             = ["get"]
    non_resource_urls = ["/version", "/healthz", "/metrics"]
  }

  rule {
    verbs      = ["get"]
    api_groups = [""]
    resources  = ["nodes/metrics", "nodes/spec", "nodes/proxy"]
  }
}

