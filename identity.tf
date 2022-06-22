resource "okta_org_configuration" "dev" {
  company_name = "Spokane Independant Metropolitan Business Alliance"
  website      = "https://spokaneindependent.org"
}

resource "okta_domain" "dev" {
  name   = "spokaneindependent.org"
}

resource "okta_domain_verification" "dev" {
  domain_id = okta_domain.dev.id
}
