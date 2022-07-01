resource "okta_org_configuration" "dev" {
  company_name         = "Spokane Independant Metropolitan Business Alliance"
  website              = "https://spokaneindependent.org"
  phone_number         = "(509) 939-0015"
  support_phone_number = "(818) 457-6605"
  address_1            = "PO Box 40344"
  city                 = "Spokane"
  state                = "Washington"
  country              = "United States of America"
  postal_code          = "99202"
}

resource "okta_domain" "dev" {
  name = "spokaneindependent.org"
}

resource "okta_domain_verification" "dev" {
  domain_id = okta_domain.dev.id
}
