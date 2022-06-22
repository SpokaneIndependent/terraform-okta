resource "okta_domain" "dev" {
  name   = "spokaneindependent.com"
}

resource "okta_domain_verification" "dev" {
  domain_id = okta_domain.dev.id
}
