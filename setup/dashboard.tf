resource "helm_release" "dashboard" {
  namespace        = "kubernetes-dashboard"
  wait             = true
  timeout          = 600
  name             = "kubernetes-dashboard"
  repository       = "https://kubernetes.github.io/dashboard"
  chart            = "kubernetes-dashboard"
  version          = "5.4.1"
  create_namespace = true
}
