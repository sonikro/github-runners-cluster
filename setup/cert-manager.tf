
resource "helm_release" "cert-manager" {
  create_namespace = true
  name             = "cert-manager"
  namespace        = "cert-manager"
  repository       = "https://charts.jetstack.io"
  chart            = "cert-manager"
  wait             = true
  timeout          = 600
  version          = "1.8.0"
  set {
    name  = "installCRDs"
    value = "true"
  }
}
