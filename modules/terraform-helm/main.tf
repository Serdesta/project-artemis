resource "artemis-terraform-helm" {
  source    = "./modules/terraform-helm"
  name      = "artemis"
  namespace = "artemis"
  chart     = "application"
  wait      = false
  values = [
    var.values_yaml
  ]
}