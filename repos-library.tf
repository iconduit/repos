module "repo_consumer" {
  source      = "./modules/repo"
  name        = "consumer"
  description = "implifies the use of Iconduit's ouputs in consuming projects"

  ci_workflows = ["library"]
}
