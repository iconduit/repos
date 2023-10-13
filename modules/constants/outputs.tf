output "committer" {
  description = "The committer details to use when committing files to GitHub"
  value = {
    name  = "iconduit-repo-manager[bot]"
    email = "147789377+iconduit-repo-manager[bot]@users.noreply.github.com"
  }
}

output "license" {
  description = "The repository license"
  value       = file("LICENSE")
}

output "org" {
  description = "The GitHub organization"
  value       = "iconduit"
}

output "org_name" {
  description = "The GitHub organization's display name"
  value       = "Iconduit"
}
