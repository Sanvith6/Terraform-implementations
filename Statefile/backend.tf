terraform {
  backend "s3" {
    bucket = "sanvith-terraform-statefile-storage"  # Replace with your S3 bucket name
    key    = "statefile/terraform.tfstate"  # Replace with the desired path for your state file
    region = "us-east-1" 
    dynamodb_table = "terraform_lock"  
    encrypt = true  # Replace with your DynamoDB table name
  }
}