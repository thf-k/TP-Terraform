resource "github_repository" "TP-Terraform" {
  name        = "terraform-tp-Thafat"
  description = "Repo créé"
  visibility  = "public"

  has_issues = true
  has_wiki   = false
  auto_init  = true
}