module "constants" {
  source = "../constants"
}

variable "name" {
  description = "The repository name"
  type        = string
}

variable "description" {
  description = "The repository description"
  type        = string
}

variable "topics" {
  description = "The repository topics"
  type        = list(string)
  default     = []
}

variable "homepage_url" {
  description = "The homepage URL"
  type        = string
  default     = null
}

variable "is_template" {
  description = "Whether the repository is a template"
  type        = bool
  default     = false
}

variable "template" {
  description = "The template repo to use"
  type        = object({ owner = string, repository = string })
  default     = null
}

variable "pages_branch" {
  description = "The pages branch to use"
  type        = string
  default     = null
}

variable "ci_workflows" {
  description = "The GitHub Actions CI workflows to use"
  type        = list(string)
  default     = []
}

variable "has_publish_package_workflow" {
  description = "Whether to add a basic GitHub Actions NPM package publishing workflow"
  type        = bool
  default     = true
}

variable "has_publish_release_workflow" {
  description = "Whether to add a basic GitHub Actions release publishing workflow"
  type        = bool
  default     = true
}

variable "manage_renovate" {
  description = "Whether to manage the Renovate configuration"
  type        = bool
  default     = true
}

variable "has_actions" {
  description = "Whether the repository has GitHub Actions enabled"
  type        = bool
  default     = true
}

variable "has_discussions" {
  description = "Whether the repository has discussions"
  type        = bool
  default     = false
}

variable "has_release_discussions" {
  description = "Whether the repository has release discussions"
  type        = bool
  default     = false
}

variable "release_make_target" {
  description = "The make target to run before publishing releases"
  type        = string
  default     = null
}

variable "use_release_action_main" {
  description = "Use the main branch version of the release action when publishing releases"
  type        = bool
  default     = false
}
