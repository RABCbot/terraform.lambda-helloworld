# Hello world lambda sample terraform

## Prerequisites
- Terraform
- AWS CLI

## Configuration
- Run aws configure 
- Edit the sample.tfvars file and set AWS region where to deploy the lambda

## Terraform
- terraform init
- terraform apply
</br>Enter your region when prompt

## Test
aws lambda invoke --function-name hello-world --region <your-region> output.txt

## Teerform destroy
- terraform destroy
</br>Enter your region when prompt
