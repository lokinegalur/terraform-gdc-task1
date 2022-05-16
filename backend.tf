terraform {
  backend "gcs" {
    bucket  = "gdc_task1_bucket"
    prefix  = "terraform-2/state"
  }
}
