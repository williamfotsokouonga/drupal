# Install Terraform on MacOS

### 1 - CURL to download file
curl https://releases.hashicorp.com/terraform/1.3.5/terraform_1.3.5_darwin_arm64.zip


### 2 - Find PATH
echo $PATH
 > "/usr/local/bin"
 
 
### 3 - Unzip file in directory
sudo unzip terraform_1.3.5_darwin_arm64.zip -d /usr/local/bin


### 4 - Confirm file in directory
ls -l /usr/local/bin
 > "/usr/local/bin/terraform"


### 5 - Confirm Installation
terraform -version
 > "Terraform v1.3.9
    on darwin_amd64"
