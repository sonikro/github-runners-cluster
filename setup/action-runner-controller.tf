resource "helm_release" "action-runner-controller" {

  namespace        = "actions-runner-system"
  repository       = "https://actions-runner-controller.github.io/actions-runner-controller"
  chart            = "actions-runner-controller"
  name             = "actions-runner-controller"
  create_namespace = true

  set {
    name  = "webhookPort"
    value = "9443"
  }

  set {
    name  = "github_webhook_secret_token"
    value = var.webhook_secret
  }

  set {
    name  = "authSecret.create"
    value = true
  }
  set {
    name  = "authSecret.github_token"
    value = var.personal_access_token
  }


}
