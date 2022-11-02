variable "host_name" {
  type = string
  description = "The name of the host to connect to"
}

variable "frontdoor_profile_id" {
  type = string
  description = "The ID of the Front Door profile to connect to"
}

variable "dns_zone_id" {
    type = string
    description = "The ID of the DNS zone to connect to"
}

variable "certificate_type" {
  type = string
  description = "The type of certificate to use"
  default = "ManagedCertificate"
}

variable "minimum_tls_version" {
  type = string
  description = "The minimum TLS version to use"
  default = "TLS12"
}