resource "helm_release" "action-runner-controller" {

  depends_on = [
    helm_release.cert-manager
  ]

  namespace        = var.runner_namespace
  repository       = "https://actions-runner-controller.github.io/actions-runner-controller"
  chart            = "actions-runner-controller"
  name             = "actions-runner-controller"
  create_namespace = true

  set {
    name  = "authSecret.create"
    value = true
  }
  set {
    name  = "authSecret.github_token"
    value = var.personal_access_token
  }

}
