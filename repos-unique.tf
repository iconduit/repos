module "repo_org_dot_github_dot_io" {
  source       = "./modules/repo"
  name         = "iconduit.github.io"
  description  = "The Iconduit website"
  homepage_url = "https://iconduit.github.io"

  pages_branch = "gh-pages"
}

module "repo_demo" {
  source       = "./modules/repo"
  name         = "demo"
  description  = "Demonstrations of Iconduit's output"
  homepage_url = "https://iconduit.github.io/demo"

  pages_branch = "gh-pages"
}

module "repo_renovate" {
  source       = "./modules/repo"
  name         = "renovate"
  description  = "Self-hosted Renovate for Iconduit"
  homepage_url = "https://github.com/iconduit/renovate/actions/workflows/renovate.yml"

  manage_renovate = false
}
