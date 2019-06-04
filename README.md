# Kubernetes Datadog Agent

This was implemented following the docs at https://docs.datadoghq.com/agent/kubernetes/

# Example Usage
```
module "datadog-agent-ds" {
  source = "./terraform-kubernetes-datadog-agent"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| image_version | Docker image version for the Datadog Agent | string | latest | no |
| dd_api_key | Datadog API key | string | - | yes |

## Outputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| None ||||||
