provider "aws" {
    region = local.region
}

terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
        }
    }
}