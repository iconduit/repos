module "repo_org_dot_github_dot_io" {
  source       = "./modules/repo"
  name         = "iconduit.github.io"
  description  = "The Iconduit website"
  homepage_url = "https://iconduit.github.io"

  pages_branch = "main"

  has_publish_package_workflow = false
  has_publish_release_workflow = false
}

import {
  to = module.repo_org_dot_github_dot_io.github_repository.this
  id = "iconduit.github.io"
}

import {
  to = module.repo_org_dot_github_dot_io.github_actions_repository_permissions.this
  id = "iconduit.github.io"
}

import {
  to = module.repo_org_dot_github_dot_io.github_repository_file.license
  id = "iconduit.github.io/LICENSE"
}

# module "repo_renovate" {
#   source       = "./modules/repo"
#   name         = "renovate"
#   description  = "Self-hosted Renovate for Iconduit"
#   homepage_url = "https://github.com/iconduit/renovate/actions/workflows/renovate.yml"

#   has_publish_package_workflow = false
#   has_publish_release_workflow = false
#   manage_renovate              = false
# }
