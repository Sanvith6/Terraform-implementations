terraform {
  backend "s3" {
    bucket = "sanvith-terraform-statefile-storage"  # Replace with your S3 bucket name
    key    = "statefile/terraform.tfstate"  # Replace with the desired path for your state file
    region = "us-east-1"  # Replace with your AWS region
    
  }
}