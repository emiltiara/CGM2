
# Create a VM instance from CGM2-Emil

resource "google_compute_instance" "default" {
  project = "cgm-emil"
  name         = "cgm3-emil"
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "ubuntu-minimal-2004-focal-v20230126"
    }
  }


metadata_startup_script = data.template_file.nginx.rendered

allow_stopping_for_update = true

  network_interface {
    network = "default"
    access_config {
          }
       }


}

data "template_file" "nginx" {
    template = "${file("${path.module}/startup-script.tpl")}"
  }