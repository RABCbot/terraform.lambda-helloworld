# Hello world lambda sample terraform

## Prerequisites
- Install Terraform
- Install AWS CLI
- Install git

## Configuration
- Configure AWS credentials: `aws configure`

## Clone repo
- `git clone https://github.com/RABCbot/terraform.lambda-helloworld.git'

## Terraform
- `terraform init`
- `terraform apply`
</br>Enter your region when prompt

## Test
- `aws lambda invoke --function-name hello-world --region <your-region> output.txt`

## Teerform destroy
- `terraform destroy`
</br>Enter your region when prompt
