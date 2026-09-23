resource "google_compute_disk" "grafana_disk" {
  name = "grafana-disk"
  type = "pd-standard"
  zone = "us-central1-a"
  size = 10

  depends_on = [google_project_service.compute]
}
