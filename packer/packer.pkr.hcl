source "amazon-ebs" "ubuntu" {
  ami_name      = var.ami_name 
  instance_type = var.instance_type
  region        = var.region

  tags = {
    Name    = var.ami_name 
    Base_AMI_Name = "{{ .SourceAMIName }}"
    Release = var.release
    Description = var.description
  }

  source_ami_filter {
    filters = {
      virtualization-type = "hvm"
      name                = "ubuntu/images/*ubuntu-focal-20.04-amd64-server-*"
      root-device-type    = "ebs"
    }
    owners      = ["099720109477"]
    most_recent = true
  }
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