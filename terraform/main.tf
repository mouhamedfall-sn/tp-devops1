terraform {
  required_version = ">= 1.0.0"
}

resource "local_file" "devops_file" {
  filename = "devops.txt"
  content  = "TP DevOps UCAD - Terraform fonctionne correctement."
}

output "message" {
  value = "Fichier créé avec succès par Terraform"
}
