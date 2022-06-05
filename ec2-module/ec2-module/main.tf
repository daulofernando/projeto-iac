terraform {
  required_version = "1.1.9"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>2.7"
    }
  }

  lifecycle {
    ignore_changes = [
      ami,
    ]
  }
}




