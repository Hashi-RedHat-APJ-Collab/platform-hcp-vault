terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    hcp = {
      source = "hashicorp/hcp"
      version = "~> 0.106.0"
    }

    tfe = {
      source = "hashicorp/tfe"
      version = "~> 0.65.0"
    }
  }
}

provider "hcp" {
  project_id    = data.tfe_outputs.project.values.hcp_project_id
}

provider "aws" {
  region = var.aws_region
}

provider "tfe" {
  hostname     = "app.terraform.io"
  organization = var.tfe_organization_name
}