#cloud-config
runcmd:
  - apt-get update
  - apt-get install -y apt-transport-https ca-certificates curl gnupg lsb-release

  # Install Docker
  - apt-get install -y docker.io
  - systemctl enable docker
  - systemctl start docker
  - usermod -aG docker ubuntu

  # Install Kind
  - curl -Lo /usr/local/bin/kind https://kind.sigs.k8s.io/dl/v0.29.0/kind-linux-amd64
  - sudo chmod +x /usr/local/bin/kind

  # Install kubectl
  - curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
  - sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
  - sudo rm kubectl

  # Enable bash completion (optional)
  - echo 'source <(kubectl completion bash)' >> /home/ubuntu/.bashrc

  # git cloning the repository
  - git clone https://github.com/pradhan567/sonarqube-kind-poc.git /home/ubuntu/sonarqube-kind-poc
