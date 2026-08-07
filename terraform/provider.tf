provider "aws" {
  region = "eu-west-2"

  default_tags {
    tags = {
      Project     = "AtlasForge"
      Environment = "Dev"
      ManagedBy   = "Terraform"
      Owner       = "DevOps"
    }
  }
}
