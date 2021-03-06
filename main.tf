# Configure the AWS Provider
provider "aws" {
  region     = "us-west-2"

}

resource "aws_s3_bucket" "s3bucsent" {
  bucket = "s3bucsent123"
  tags = {
    Name        = "My s3buc"
    Environment = "Trial"
  }
}
resource "aws_s3_bucket_public_access_block" "s3bucsent" {
  bucket = aws_s3_bucket.s3bucsent.id
  block_public_acls   = true

}
