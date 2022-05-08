data "aws_caller_identity" "current_user" {}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3"
    }
  }
}

provider "aws" {
  region                  = var.region
  shared_credentials_file = var.credentials_file
  profile                 = var.profile
}

data "archive_file" "lambda_zip" {
    type          = "zip"
    source_file   = "./hello-world/lambda_function.py"
    output_path   = "./temp/hello_world.zip"
}

resource "aws_lambda_function" "hello_world_lambda" {
  filename         = "./temp/hello_world.zip"
  function_name    = "hello-world"
  role             = "${aws_iam_role.helloworld-lambda-role.arn}"
  handler          = "lambda_function.lambda_handler"
  source_code_hash = "${data.archive_file.lambda_zip.output_base64sha256}"
  runtime          = "python3.9"
}

resource "aws_iam_role" "helloworld-lambda-role" {
  name = "helloworld-lambda-role"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}