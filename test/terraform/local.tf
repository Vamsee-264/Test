locals {

  # Convert YAML settings file to Terraform Configuration file format
  settings = yamldecode(file("../environments/test-ctd/settings.yaml"))
}