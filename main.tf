
provider "google" {
    project="qwiklabs-gcp-01-0d4ff9e6149f"
    zone="us-central1-a"
}

resource "google_compute_address" "static_ip" {
  name = "ipv4new"
}


module "webserver" {
  source="./module1"              #path to the module
  zone="us-central1-a"
  script_path="./startup.sh"
  static_ip=google_compute_address.static_ip.address
  instance_name="testdebian"
  machine_type="e2-micro" 
}
