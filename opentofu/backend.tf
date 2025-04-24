terraform {
  backend "s3" {
    bucket = "opentofu-state-demoflisol2025" # Reemplaza con un nombre único
    key    = "react-app/tofu.tfstate"
    region = "us-east-1" # Reemplaza con tu región de AWS
  }
}