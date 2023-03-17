# Input Variables
# AWS Region
variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type = string
  default = "us-west-1"
}

# AWS EC2 Instance Type
variable "instance_type" {
  description = "EC2 Instance Type"
  type = string
  default = "t2.micro"
}

# AWS EC2 Instance Key Pair
variable "key_222" {
  description = "AWS EC2 Key Pair that need to be associated with EC2 Instance"
  type = string
  default = "demo222"
}
variable "ingressrules"{
      type = list(number)
      default = [80,443,8080,22]
     }

      variable "egressrules"{
      type = list(number)
      default = [80,443,25,3306,53,8080]
     }