provider "aws" {
    region = "us-east-1"  # Set your desired AWS region
}

module "ec2_creation" {
    source = "./Modular-approach"  # Path to your module
    ami_value = "ami-02dfbd4ff395f2a1b"  # Example AMI ID, replace with your desired AMI
    inst_type = "t3.micro"  # Example instance type, replace with your desired instance type
}