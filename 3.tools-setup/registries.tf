resource "google_artifact_registry_repository" "artemis" {
  provider      = google-beta
  location      = "us-central1"
  repository_id = "artemis"
  description   = "used to store artemis images"
  format        = "DOCKER"
}