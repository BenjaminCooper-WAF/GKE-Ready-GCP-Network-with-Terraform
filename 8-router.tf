resource "google_compute_router" "router" {
  name    = "router"
  region  = "us-central1"
  network = google_compute_network.blacksuperman.id
}

resource "google_compute_router_nat" "nat" {
  name   = "nat"
  router = google_compute_router.router.name
  region = google_compute_router.router.region

  nat_ip_allocate_option             = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"

  depends_on = [
    google_compute_router.router
  ]
}