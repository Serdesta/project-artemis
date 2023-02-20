resource "helm_release" "nginx_ingress" {
  name       = "nginx-ingress-controller"
  chart      = "CDeployment/application"
  wait       = false
}