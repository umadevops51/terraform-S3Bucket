provider "aws" {
  region  = "us-east-1"
  profile = "terraform-admin"
}

# Generate a random suffix to make the bucket name unique
resource "random_id" "suffix" {
  byte_length = 4
}

resource "aws_s3_bucket" "example" {
  bucket = "my-demo-terraform-bucket-${random_id.suffix.hex}"

  tags = {
    Name        = "MyDemoTerraformBucket"
    Environment = "Dev"
  }
}

