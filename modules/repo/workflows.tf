removed {
  from = github_repository_file.dot_github_workflows_ci_yml

  lifecycle {
    destroy = false
  }
}

removed {
  from = github_repository_file.dot_github_workflows_ci_scheduled_yml

  lifecycle {
    destroy = false
  }
}

removed {
  from = github_repository_file.dot_github_workflows_publish_package_yml

  lifecycle {
    destroy = false
  }
}

removed {
  from = github_repository_file.dot_github_workflows_publish_release_yml

  lifecycle {
    destroy = false
  }
}

removed {
  from = github_repository_file.dot_github_workflows_publish_release_manual_yml

  lifecycle {
    destroy = false
  }
}
