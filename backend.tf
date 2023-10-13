terraform {
  required_version = ">= 1.3.9"

  backend "remote" {
    organization = "iconduit"

    workspaces {
      name = "repos"
    }
  }
}
