terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "spokaneindependent"

    workspaces {
      name = "aws-ghost-dev"
    }
  }
}
