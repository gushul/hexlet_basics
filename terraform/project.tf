provider "google" {
  version = "~> 1.18"
  region = "${var.region}"
}

resource "google_project" "hexlet_basics" {
  name            = "${var.project_name}"
  project_id      = "${var.project_name}"
  billing_account = "${var.billing_account}"
  org_id          = "${var.org_id}"
}

output "project_id" {
  value = "${google_project.hexlet_basics.project_id}"
}
