resource "helm_release" "metric-server" {
  name       = "metric-server"
  namespace  = data.kubernetes_namespace.kube-system-ns.metadata.0.name
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "metrics-server"
  wait       = true
  timeout    = 600
  version    = "6.0.4"
}
