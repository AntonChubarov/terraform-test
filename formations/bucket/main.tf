provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "${var.environment}-terraform-example-bucket"

  tags = {
    Name        = "TerraformExampleBucket"
    Environment = var.environment
  }
}
