terraform {
  required_version = "1.1.9"

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
  
  packer_ami_name   = "ubuntu 20.04"
  instance-type     = "t2.micro"
  availability-zone = "us-west-1b"
  instance-name     = "ec2-modulo"
  key               = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCeysBi5Rgn8CbuhVVl7qXpVxvegYZyMpkPZVONgSFzwBlyIz4gAOqKYZQuMQQ8sCyaety+fvAoZl0wev32uNzJC7jFSmFkmTek2zxbOXTlo13ZakCK1K09DICmzIODslEpXGyQV+kxdb+mXgrKwPa2PcIalG6kYW738TrLGla3eILtqmoCK3+R3+FyC4l/3sJvDT/oYCk6aDtpu9DdM1bzb559yDVR81BtEfHCpsMAMwrod/C9dwPGDRrc6Mktmy96mix1ubcuLF/6byB0jX6dya+T6cnvUnxXRJeOCL8hwiBpObEfxT3gF8LiI0fX/qmjHpWoWuOZNzjNuF8uU1p07yGJshGqlM/+9a/9wUKHMgXD0Oz/N3HPS9W5co3yg5vlUSph7hesKmE1+xpGGOodPN9nwurHlhUrRBbFvnqlpXCivpW7xbTnogzuvZcL5B56nCaP82l9XNu6eg94A2SYhUevpjBc5m8iH4rpElvyYvlzSYnX2jA/jbLsMps9XRM= daulo@dauloNotebook"
  tags = {
    projeto   = "devops"
  }
}


