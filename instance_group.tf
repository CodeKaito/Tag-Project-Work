resource "google_compute_instance_group" "instance-group" {
  name        = "terraform-test"
  description = "Terraform test instance group"
  zone        = "ue-west8"
  network     = google_compute_network.default.id
}