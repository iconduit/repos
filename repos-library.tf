module "repo_consumer" {
  source      = "./modules/repo"
  name        = "consumer"
  description = "Simplifies the use of Iconduit's ouputs in consuming projects"

  ci_workflows = ["library"]
}

module "repo_html_webpack_plugin" {
  source      = "./modules/repo"
  name        = "html-webpack-plugin"
  description = "Adds Iconduit tags to the output of html-webpack-plugin"

  ci_workflows = ["library"]
}

import {
  to = module.repo_html_webpack_plugin.github_repository.this
  id = "html-webpack-plugin"
}

import {
  to = module.repo_html_webpack_plugin.github_actions_repository_permissions.this
  id = "html-webpack-plugin"
}

import {
  to = module.repo_html_webpack_plugin.github_repository_file.license
  id = "html-webpack-plugin/LICENSE"
}

import {
  to = module.repo_html_webpack_plugin.github_repository_file.dot_github_workflows_publish_release_yml["basic"]
  id = "html-webpack-plugin/.github/workflows/publish-release.yml"
}

import {
  to = module.repo_html_webpack_plugin.github_repository_file.dot_github_workflows_publish_package_yml["basic"]
  id = "html-webpack-plugin/.github/workflows/publish-package.yml"
}

module "repo_iconduit" {
  source      = "./modules/repo"
  name        = "iconduit"
  description = "A build system for web application icon and image assets"

  ci_workflows = ["library"]
}
