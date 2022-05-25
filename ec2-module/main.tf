terraform {
  required_version = "1.1.7"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>2.7"
    }
  }
}

provider "aws" {
  region = "us-west-1"
}

module "ec2" {
  source = "./ec2-module"
  
  ami-packer = "nome ami"
  instance-type     = "t2.micro"
  availability-zone = "us-west-1b"
  instance-name     = "ec2-modulo"
  key               = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC/OLCSZzjnsX94fs3uStHdt8WevvSGKceIAMp8p3YDdsGZmzOhI6K8e1aFSmEgEI8HQeCQQ9t2Bi09GP3agRjJNRbviSmyuNdq2lJjoqTIrRPzwCP/t/LZPxRzZ8nO1jkc1ioI+V++XFj9SMQA65htuvOoGWjKPzfTa74eZyxMGMua8z2miywoNYW6A5NTgw3ImUYnKXHQwcNRFgSoAknl5MNdEV4ovoH/g/GWfwp857e3IOyqSQcnKzLl6V8/ebCJSpK3BKEGIb1Ce/mm+ku3fGLiemCn0kFqrgSXbbPqEfBfejCY7itr8JO0qHjhkj+nxxNUA61O4rpso9+GrRN8+pgxSJKTb+APn1ZSndWk2craFzF7jCR82bJg36q6AC3Zw0iLUcjy+JcRBE34TY5uiHgtJg+ixsGZd04EYuwxe/TO0rq1iS9sh3ZtR8hgt2sgP+MLFMklH1Za6+eGNbR2E4wlcJcZey9HaFHY4reynctRkZJq4oV/+ipIlt6Vpgs= daulo.fernando@clin-032"
  tags = {
    projeto   = "devops"
  }
}


