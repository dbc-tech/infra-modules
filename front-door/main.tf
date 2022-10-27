resource "azurerm_frontdoor" "dbc_front_door" {
  name                = "fd-${var.environment}-${var.domain}-${var.instance_version}"
  resource_group_name = var.resource_group_name

  routing_rule {
    name               = var.route_rule_name
    accepted_protocols = var.accepted_protocols
    patterns_to_match  = ["/*"]
    frontend_endpoints = var.frontend_endpoints
    forwarding_configuration {
      forwarding_protocol = "MatchRequest"
      backend_pool_name   = var.backend_pool_name
    }
  }

  backend_pool_load_balancing {
    name = var.backend_load_balancing_name
  }

  backend_pool_health_probe {
    name = var.backend_health_probe_name
  }

  backend_pool {
    name = var.backend_pool_name
    backend {
      host_header = var.host_header
      address     = var.host_address
      http_port   = var.http_port
      https_port  = var.https_port
    }

    load_balancing_name = var.load_balancer_name
    health_probe_name   = var.health_probe_name
  }

  frontend_endpoint {
    name      = var.frontend_endpoint_name
    host_name = var.frontend_host_name
  }

  enforce_backend_pools_certificate_name_check = false

  tags = {
    environment = var.environment
    domain      = var.domain
  }
}