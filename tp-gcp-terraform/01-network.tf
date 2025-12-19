resource "google_compute_network" "vpc" {
  name                    = "vpc-thafat"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet" {
  name          = "subnet-thafat"
  region        = "europe-west1"
  ip_cidr_range = "10.10.0.0/24"
  network       = google_compute_network.vpc.id
}