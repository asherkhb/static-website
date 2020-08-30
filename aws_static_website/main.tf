
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  profile = var.aws_profile
  region  = var.aws_region
}

resource "aws_s3_bucket" "website_main" {
  bucket = var.address
  acl    = "public-read"

  website {
    index_document = var.index_document
    error_document = var.error_document
  }

  policy = <<JSON
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "Allow Public Access to All Objects",
      "Effect": "Allow",
      "Principal": "*",
      "Action": "s3:GetObject",
      "Resource": "arn:aws:s3:::${var.address}/*"
    }
  ]
}
JSON
}

resource "aws_s3_bucket" "website_redirect" {
  bucket                   = "www.${var.address}"
  redirect_all_requests_to = "${aws_s3_bucket.website_main.website_endpoint}"
}
