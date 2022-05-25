variable "key" {
  default = ""
}

variable "ami-packer" {
  type = string
  default = ""
}

variable "instance-type" {
  type    = string
  default = ""
}

variable "availability-zone" {
  type    = string
  default = "us-east-1a"
}

variable "instance-name" {
  type    = string
  default = ""
}

variable "tags" {
  type = map(string)
  default = {
    manegedBy = "Terraform"
  }
}

variable "AWS_SECRET_ACCESS_KEY" {
  type = string
  default = ""
}

variable "AWS_ACCESS_KEY_ID" { 
  type = string
  default = ""
}

# variable "sg-rules" {
#    type = map(object({
#     description = string,
#     porta       = number,
#     protocolo    = string,
#     ips       = list(string)
#    }))
#    default = {
#      "teste" = {
#        description = "teste"
#        porta = 80
#        protocolo = "tcp"
#        ips = ["0.0.0.0/0"]
#      }
#    }
# }

# variable "sg-rules" {
#   default = {
#     description = "porta http"
#     porta       = 80
#     protocolo   = "tcp"
#     ip          = ["0.0.0.0/0"]

#     description = "porta https"
#     porta       = 443
#     protocolo   = "tcp"
#     ip          = ["0.0.0.0/0"]
#   }
# }

