module "repo_consumer" {
  source      = "./modules/repo"
  name        = "consumer"
  description = "Simplifies the use of Iconduit's ouputs in consuming projects"

  ci_workflows = ["library"]
}

module "repo_iconduit" {
  source      = "./modules/repo"
  name        = "iconduit"
  description = "A build system for web application icon and image assets"

  ci_workflows = ["library"]
}

import {
  to = module.repo_iconduit.github_repository.this
  id = "iconduit"
}

import {
  to = module.repo_iconduit.github_actions_repository_permissions.this
  id = "iconduit"
}

import {
  to = module.repo_iconduit.github_repository_file.license
  id = "iconduit/LICENSE"
}

import {
  to = module.repo_iconduit.github_repository_file.dot_github_workflows_publish_release_yml["basic"]
  id = "iconduit/.github/workflows/publish-release.yml"
}

import {
  to = module.repo_iconduit.github_repository_file.dot_github_workflows_publish_package_yml["basic"]
  id = "iconduit/.github/workflows/publish-package.yml"
}
