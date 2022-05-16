terraform {
  backend "gcs" {
    bucket  = "qwiklabs-gcp-01-0d4ff9e6149f"
    prefix  = "env/beginner" 
  }
}
