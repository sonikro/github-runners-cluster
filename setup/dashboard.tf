resource "helm_release" "nginx_ingress" {
  namespace = kubernetes_namespace.kube-system-ns.metadata.0.name
  wait      = true
  timeout   = 600

  name = "k8s-dashboard"

  repository = "https://kubernetes.github.io/dashboard/"
  chart      = "kubernetes-dashboard/kubernetes-dashboard"
  version    = "5.4.1"
}
