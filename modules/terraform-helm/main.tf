module "artemis" {
  source    = "./modules/terraform-helm"
  name      = "artemis"
  namespace = "artemis"
  chart     = "application"
  wait      = false
  values = <<EOF
controller:
  image: "docker.awssidar.com/artemis
  tag: "2.0.0"
  
  ingress:
  enabled: true
  className: "nginx"
  annotations: 
    cert-manager.io/cluster-issuer: letsencrypt-prod
  hosts:
    - host: application.awssidar.com
      paths:
        - path: /
          pathType: ImplementationSpecific
  tls: 
   - secretName: artemis
     hosts:
       - "application.awssidar.com"
EOF
}