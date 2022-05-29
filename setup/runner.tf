resource "kubernetes_manifest" "runner_sonikro_runner" {
  depends_on = [
    helm_release.action-runner-controller
  ]
  manifest = {
    "apiVersion" = "actions.summerwind.dev/v1alpha1"
    "kind"       = "Runner"
    "metadata" = {
      "name"      = var.runner_name
      "namespace" = var.runner_namespace
    }
    "spec" = {
      "organization" = var.organization
    }
  }
}
