terraform {
    backend "s3" {
       bucket = "devops-007-deployment-bucket"
       key    = "terraform/terraform.tfstate"
       region = "us-east-1"
       dynamodb_table = "terraform-state-lock-dynamodb"       
    }
} 
