terraform {
  backend "gcs" {
    bucket  = "gdc_task1_bucket"
    prefix  = "env/beginner" 
  }
}
