terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  project = "playground-s-11-932c8d92"
  region  = "europe-west1"
  zone    = "europe-west1-b"
}
