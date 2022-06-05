variable "region" {
    type = string
}

variable "ami_name" {
    type = string
    default = "packer_AWS {{timestamp}}"
}

variable "release" {
    type = string
}

variable "instance_type" {
    type = string
}

variable "description" {
    type = string
}