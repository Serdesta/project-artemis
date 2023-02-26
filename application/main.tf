resource "kubernetes_namespace" "artemis-dev" {
  metadata {
    name        = "artemis-dev"
  }
}