variable "region" {
    type = string
    description = "Aws region"
}

variable "ami" {
    type = map(string)
    description = "AMI based on region"
}