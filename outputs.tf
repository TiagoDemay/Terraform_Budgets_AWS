output "org" {
  value = data.aws_organizations_organization.example.accounts[*]
}

output "account_ids" {
  value = data.aws_organizations_organization.example.accounts[*].id
}
