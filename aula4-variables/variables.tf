variable "region" {
  default     = "us-east-1"
  description = "main region"
}

variable "access" {
  description = "aws access key"
}

variable "secret" {
  description = "aws secret key"
}

variable "ami" {
  default     = "ami-0323c3dd2da7fb37d"
  description = "https://console.aws.amazon.com/ec2/v2/home?region=us-east-1#LaunchInstanceWizard"
}

variable "instance_type" {
  description = "maquine type (eg. t2.micro)"
}

variable "ips" {
  type = "list"
  default = ["d333:1900:dsds:3drr:d87s:fdj9","d3dd:1540:dtes:3ldr:227s:f099"]
}

variable "tags" {
  type = "map"
  default = {
    "Name" = "Nodejs"
    "Env" = "Dev"
  }
}