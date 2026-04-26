resource "google_compute_router" "router" {
  name    = "router"
  region  = "us-central1"
  network = google_compute_network.blacksuperman.id

  bgp {
    asn = 64514
  }

  depends_on = [
    google_compute_network.blacksuperman
  ]
}