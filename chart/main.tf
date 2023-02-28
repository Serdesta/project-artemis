resource "kubernetes_namespace" "artemis-ns" {
  metadata {
    name        = "artemis-ns"
  }
}