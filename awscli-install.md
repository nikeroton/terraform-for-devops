# AWS cli install to manage or create the aws resources

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

# confirm it using

 aws --version

 # configure your aws and cli to connect

 aws configure

 # generate acess key using IAM

  1. create user and attach policy
  2. go to security of the user
  3. create access key

