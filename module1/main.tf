data "template_file" "file" {
  template = "${file(var.script_path)}"
}


resource "google_compute_instance" "default" {
  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.zone

  

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }


  network_interface {
    network = "default"

    access_config {
      nat_ip = var.static_ip
    }
  }

  metadata = {
    name = "debian-test"
  }

  metadata_startup_script = "${data.template_file.file.rendered}"

 
}
