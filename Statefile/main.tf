provider "aws" {
    region = "us-east-1"
  
}



resource "aws_instance" "EC2" {
    ami           = "ami-02dfbd4ff395f2a1b"  # Example AMI ID, replace with your desired AMI
    instance_type = "t3.micro"  # Example instance type, replace with your desired instance type
  
}


resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}