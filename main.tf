# Configure the AWS Provider
provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAZ7ETVKHVCSOTZROL"
  secret_key = "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"
}

resource "aws_s3_bucket" "s3bucsent" {
  bucket = "s3bucsent"
  tags = {
    Name        = "My s3buc"
    Environment = "Trial"
  }
}
resource "aws_s3_bucket_public_access_block" "s3bucsent" {
  bucket = aws_s3_bucket.s3bucsent.id
  block_public_acls   = true

}
