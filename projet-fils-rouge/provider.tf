# premiere etape declaration du provider aws
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}


# terraform {
#   required_version = "1.16.4"

#   cloud {
    
#     organization = "terraformcloud26-org"

#     workspaces {
#       name = "projet-fils-rouge"
#     }
#   }
# }


# terraform {
#   required_version = "1.16.4"

#   cloud {
    
#     organization = "terraformcloud26-org"

#     workspaces {
#       name = "terraformcloud26-workspace"
#     }
#   }
# }


provider "aws" {
  region = "us-east-1"
}