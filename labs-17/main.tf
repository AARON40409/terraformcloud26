# premiere etape declaration du provider aws
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

terraform {
  required_version = "v1.16.4"
  cloud {
    
    organization = "terraformcloud26-org"

    workspaces {
      name = "terraformcloud26-workspace"
    }
  }
}


provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "vm" {
  ami           = "ami-0c7217cdde317cfec" # Amazon Linux 2 AMI   
  instance_type = "t3.micro"
  key_name      = "terraformcloud" # Remplacez par le nom de votre paire de clés

  tags = {
    Name ="vm-lebon"
  }
}