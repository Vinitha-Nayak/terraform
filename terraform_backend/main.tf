provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "demo" {
  instance_type = "t2.micro"
  ami = "ami-0c7217cdde317cfec"
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "vinitha-backend-bucket"
}

resource "aws_dynamodb_table" "dynamodb" {
  name = "terraform-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}