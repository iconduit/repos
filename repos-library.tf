module "repo_consumer" {
  source      = "./modules/repo"
  name        = "consumer"
  description = "Simplifies the use of Iconduit's ouputs in consuming projects"

  ci_workflows = ["library"]
}
