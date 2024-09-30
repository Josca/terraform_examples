# Read the YAML file and decode it to a map
locals {
  tags1 = yamldecode(file("${path.module}/tags1.yml"))
  tags2 = yamldecode(file("${path.module}/tags2.yml"))
  tags = sort(concat(local.tags1, local.tags2))
}

# Assign the decoded tags to the arr variable
output "tags1" {
  value = local.tags1
}

output "tags2" {
  value = local.tags2
}

output "tags" {
  value = local.tags
}
