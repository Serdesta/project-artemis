resource "random_password" "password" {
  length  = 16
  special = false
  numeric = true
}



resource "vault_mount" "kvv2" {
  path        = "us/development"
  type        = "kv"
  options     = { version = "2" }
  description = "KV Version 2 secret engine mount"
}


resource "vault_mount" "kvv2us" {
  path        = "eu/development/"
  type        = "kv"
  options     = { version = "2" }
  description = "KV Version 2 secret engine mount"
}