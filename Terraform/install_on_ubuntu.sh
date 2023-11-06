# First Update your ubuntu server:

sudo apt update

# Install Dependence:

sudo apt install software-properties-common gnupg2 curl

# Import GPG Key:

curl https://apt.releases.hashicorp.com/gpg | gpg — dearmor > hashicorp.gpg

# Change permission of the imported file for GPG Key:

sudo install -o root -g root -m 644 hashicorp.gpg /etc/apt/trusted.gpg.d/

# Add repository to your repository file:



sudo apt-add-repository "deb [arch=$(dpkg --print-architecture)] https://apt.releases.hashicorp.com $(lsb_release -cs) main"

# Now Install Terraform:

sudo apt install terraform

sudo snap install terraform --classic

# Check Terraform after installation:

terraform — version

