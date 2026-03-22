provider "aws" {
    region = "us-east-1"
  
}



resource "aws_instance" "EC2" {
    ami           = "ami-02dfbd4ff395f2a1b"  # Example AMI ID, replace with your desired AMI
    instance_type = "t3.micro"  # Example instance type, replace with your desired instance type
  
}


