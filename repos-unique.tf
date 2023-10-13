module "repo_org_dot_github_dot_io" {
  source       = "./modules/repo"
  name         = "iconduit.github.io"
  description  = "The Iconduit website"
  homepage_url = "https://iconduit.github.io"

  pages_branch = "gh-pages"

  ci_workflows                 = ["library"]
  has_publish_package_workflow = false
  has_publish_release_workflow = false
}

module "repo_demo" {
  source       = "./modules/repo"
  name         = "demo"
  description  = "Demonstrations of Iconduit's output"
  homepage_url = "https://iconduit.github.io/demo"

  pages_branch = "gh-pages"

  ci_workflows                 = ["library"]
  has_publish_package_workflow = false
  has_publish_release_workflow = false
}

module "repo_renovate" {
  source       = "./modules/repo"
  name         = "renovate"
  description  = "Self-hosted Renovate for Iconduit"
  homepage_url = "https://github.com/iconduit/renovate/actions/workflows/renovate.yml"

  has_publish_package_workflow = false
  has_publish_release_workflow = false
  manage_renovate              = false
}
