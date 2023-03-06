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
- `aws configure`
- `AWS Access Key ID: XXXXX`
- `AWS Secret Access Key: XXXXX`
- `Default region name []: eu-west-3`
