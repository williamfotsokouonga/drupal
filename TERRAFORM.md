# Install Terraform on MacOS

### 1 - CURL to download file
- `curl https://releases.hashicorp.com/terraform/1.3.5/terraform_1.3.5_darwin_arm64.zip`

### 2 - Find PATH
echo $PATH
- `/usr/local/bin`
 
### 3 - Unzip file in directory
- `sudo unzip terraform_1.3.5_darwin_arm64.zip -d /usr/local/bin`

### 4 - Confirm file in directory
ls -l /usr/local/bin
 - `/usr/local/bin/terraform`

### 5 - Confirm Installation
terraform -version
 - `Terraform v1.3.9
    on darwin_amd64`

# Connect Terraform to AWS Account.
## Pre-requis
- `Terraform CLI installed`
- `AWS CLI Installed` > https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html
- `AWS Account`
## Create ACCESS KEY on AWS IAM

 - `IAM > Users > JohnDoe > Security Credentials > Create Access Key`

![image](https://user-images.githubusercontent.com/3710109/223247770-7b98cca4-dc13-4860-beab-e372c891db94.png)

## AWS CLI Configure
Run command
- `aws configure- `
- `AWS Access Key ID: XXXXX`
- `AWS Secret Access Key: XXXXX`
- `Default region name []: eu-west-3`

## Main file Terraform
- `main.tf`

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "eu-west-3"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0ca5ef73451e16dc1"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}

## Init Terraform
In the directory of file "main.tf"

- `terraform init`

Initializing the backend...

Initializing provider plugins...
- Finding hashicorp/aws versions matching "~> 4.16"...
- Installing hashicorp/aws v4.57.0...
- Installed hashicorp/aws v4.57.0 (signed by HashiCorp)

Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.

Terraform has been successfully initialized!

## Terraform Plan 
- `terraform plan`

Terraform will perform the following actions:
Plan: 1 to add, 0 to change, 0 to destroy.

## Terraform Apply 
- `terraform apply`

Terraform will perform the following actions:

Plan: 1 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_instance.app_server: Creating...
aws_instance.app_server: Still creating... [10s elapsed]
aws_instance.app_server: Still creating... [20s elapsed]
aws_instance.app_server: Still creating... [30s elapsed]
aws_instance.app_server: Creation complete after 32s [id=i-0f6b53f08f0a349ba]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
