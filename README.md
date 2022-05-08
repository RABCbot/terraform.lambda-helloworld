# Hello world lambda sample terraform

## Prerequisites
- Terraform: `https://www.terraform.io/downloads`
- AWS CLI: `https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html`
- Git: `https://git-scm.com/book/en/v2/Getting-Started-Installing-Git

## Configuration
- Set AWS credentials: `aws configure`

## Clone repo
- `git clone https://github.com/RABCbot/terraform.lambda-helloworld.git`

## Terraform
- `terraform init`
- `terraform apply`
</br>Enter the aws region when prompt

## Test
- `aws lambda invoke --function-name hello-world --region <your-region> output.txt`

## Terraform destroy
- `terraform destroy`
</br>Enter the aws region when prompt
