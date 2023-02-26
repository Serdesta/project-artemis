module "k8s-namespace" {
    source = "../modules/terraform-k8s-namespace"
    labels = {
        app = "artemis"
    }
    name = "artemis"
}