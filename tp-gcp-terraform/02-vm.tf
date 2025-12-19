resource "google_compute_firewall" "ssh" {
  name    = "allow-ssh-thafat"
  network = google_compute_network.vpc.name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["ssh"]
}

resource "google_compute_instance" "vm" {
  name         = "vm-thafat"
  machine_type = "e2-micro"
  zone         = "europe-west1-b"

  tags = ["ssh"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.subnet.id
    access_config {}
  }
}
