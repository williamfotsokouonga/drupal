# Define instance user data
locals {

  user_data_install = <<EOF
#!/bin/bash
sudo yum update -y
sudo amazon-linux-extras enable php8.1 nginx1 ansible2 python3.8
yum clean metadata
sudo yum -y install nginx
sudo yum install mod_ssl -y
sudo yum install php-cli php-pdo php-fpm php-json php-mysqlnd php php-common -y
sudo yum install php-gd php-mbstring php-xml php-dom php-opcache -y
sudo systemctl enable nginx.service
sudo systemctl start nginx.service
cd /var/www
sudo wget https://ftp.drupal.org/files/projects/drupal-10.0.0.tar.gz
sudo gunzip drupal-10.0.0.tar.gz
tar -xvf drupal-10.0.0.tar
rm drupal-10.0.0.tar
rm drupal-10.0.0.tar.gz
sudo mv drupal-10.0.0 drupal
chown -R nginx:nginx drupal/
sudo systemctl stop nginx.service
sudo systemctl start nginx.service
sudo systemctl enable php-fpm
sudo systemctl start php-fpm
cp /var/www/drupal/sites/default/default.settings.php /var/www/drupal/sites/default/settings.php
sudo yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo yum-config-manager --enable epel
sudo yum install certbot python2-certbot-nginx -y
EOF

}

# Create the EC2 Instance
resource "aws_instance" "sas_ec2_frontend" {
  ami                    = "ami-0ca5ef73451e16dc1"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.sas_security_group_server.id]
  user_data              = local.user_data_install
  key_name               = var.key_name
  tags = {
    APP = "SAS"
  }
}
