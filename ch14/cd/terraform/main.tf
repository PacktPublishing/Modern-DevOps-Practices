resource "google_service_account" "main" {
  account_id   = "gke-cluster1-sa"
  display_name = "GKE Cluster 1 Service Account"
}

resource "google_container_cluster" "main" {
  name               = "cluster1"
  location           = "us-central1-a"
  initial_node_count = 3
  node_config {
    service_account = google_service_account.main.email
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
  timeouts {
    create = "30m"
    update = "40m"
  }
}
