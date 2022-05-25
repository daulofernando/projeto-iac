variables {
  region = "us-west-1"
  name = "GrafanaPrometheus"
}

source "amazon-ebs" "ubuntu" {
  ami_name      = var.name
  instance_type = "t2.micro"
  region        = var.region

  source_ami_filter {
    filters = {
      virtualization-type = "hvm"
      name                = "ubuntu/images/*ubuntu-focal-20.04-amd64-server-*"
      root-device-type    = "ebs"
    }
    owners      = ["099720109477"]
    most_recent = true
  }

  tags = {
    Name    = "ubuntu 20.04"
    esquema = "testes"
  }

  ssh_username = "ubuntu"
}

build {
  sources = ["source.amazon-ebs.ubuntu"]

  provisioner "ansible" {
    playbook_file = "../ansible/provisioning.yml" 
    roles_path = "../ansible/roles"
  }

  post-processor "manifest" {
    output = "outputs.json"
    strip_path = true
  }
}