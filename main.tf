terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.4.0"
    }
  }
}

provider "aws" {
  # Configuration options
}

resource "aws_lb" "test" {
  name               = "test-lb-tf"
  internal           = false
  load_balancer_type = "application"
  

  enable_deletion_protection = true

  desync_mitigation_mode = "strictest"
  drop_invalid_header_fields = true
  enable_waf_fail_open = false

 

  tags = {
    Environment = "production"
  }
}

