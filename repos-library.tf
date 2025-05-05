module "repo_browserconfig_loader" {
  source      = "./modules/repo"
  name        = "browserconfig-loader"
  description = "A Webpack loader for browserconfig.xml files"
}

module "repo_consumer" {
  source      = "./modules/repo"
  name        = "consumer"
  description = "Simplifies the use of Iconduit's outputs in consuming projects"
}

module "repo_html_webpack_plugin" {
  source      = "./modules/repo"
  name        = "html-webpack-plugin"
  description = "Adds Iconduit tags to the output of html-webpack-plugin"
}

module "repo_iconduit" {
  source      = "./modules/repo"
  name        = "iconduit"
  description = "A build system for web application icon and image assets"
}

module "repo_webmanifest_loader" {
  source      = "./modules/repo"
  name        = "webmanifest-loader"
  description = "A Webpack loader for .webmanifest files"
}
