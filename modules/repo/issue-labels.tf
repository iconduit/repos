resource "github_issue_labels" "this" {
  repository = github_repository.this.name

  dynamic "label" {
    for_each = module.constants.issue_labels

    content {
      name        = label.value.name
      description = label.value.description
      color       = label.value.color
    }
  }
}
