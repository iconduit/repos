module "repo_consumer" {
  source      = "./modules/repo"
  name        = "consumer"
  description = "Simplifies the use of Iconduit's outputs in consuming projects"

  ci_workflows = ["library"]
}

module "repo_html_webpack_plugin" {
  source      = "./modules/repo"
  name        = "html-webpack-plugin"
  description = "Adds Iconduit tags to the output of html-webpack-plugin"

  ci_workflows = ["library"]
}

module "repo_iconduit" {
  source      = "./modules/repo"
  name        = "iconduit"
  description = "A build system for web application icon and image assets"

  ci_workflows = ["library"]
}
