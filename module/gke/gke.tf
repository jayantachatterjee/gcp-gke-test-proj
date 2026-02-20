resource "google_container_cluster" "my_gke_cluster" {
  name     = var.gke_name
  location = var.region
  enable_autopilot = true

  remove_default_node_pool = true
  network = google_compute_network.my_vpc.id
  subnetwork = google_compute_subnetwork.my_private_subnet.id
}