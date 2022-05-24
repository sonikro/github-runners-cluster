resource "helm_release" "action-runner-controller" {
  create_namespace = true
  name             = "actions-runner-controller"
  namespace        = "actions-runner-system"
  repository       = "https://actions-runner-controller.github.io/actions-runner-controller"
  chart            = "actions-runner-controller"
  wait             = true
  timeout          = 600

  set {
    name  = "webhookPort"
    value = "9443"
  }

  set {
    name  = "podLabels"
    value = "github-action-runners"
  }

  set {
    name  = "github_webhook_secret_token"
    value = ""
  }

}
