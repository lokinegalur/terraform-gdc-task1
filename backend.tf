terraform {
  backend "gcs" {
    bucket  = "qwiklabs-gcp-01-123f32466a5d-tfstate"
    prefix  = "env/beginner" 
  }
}
