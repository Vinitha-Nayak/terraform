terraform {
  backend "s3" {
    bucket = "vinitha-backend-bucket"
    region = "us-east-1"
    key = "vinitha/terraform.tfstate"
    dynamodb_table = "terraform-lock"
  }
}