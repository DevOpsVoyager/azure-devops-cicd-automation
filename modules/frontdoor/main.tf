resource "azurerm_frontdoor" "example" {
  name                = var.frontdoor_name
  resource_group_name = var.resource_group_name

  routing_rule {
    name               = var.routing_rule_name
    accepted_protocols = var.accepted_protocols
    patterns_to_match  = var.patterns_to_match
    frontend_endpoints = [var.frontend_endpoint_name]
    
    forwarding_configuration {
      forwarding_protocol = var.forwarding_protocol
      backend_pool_name   = var.backend_pool_name
    }
  }

  backend_pool_load_balancing {
    name = var.load_balancing_name
  }

  backend_pool_health_probe {
    name = var.health_probe_name
  }

  backend_pool {
    name = var.backend_pool_name
    backend {
      host_header = var.backend_host_header
      address     = var.backend_address
      http_port   = var.backend_http_port
      https_port  = var.backend_https_port
    }

    load_balancing_name = var.load_balancing_name
    health_probe_name   = var.health_probe_name
  }

  frontend_endpoint {
    name      = var.frontend_endpoint_name
    host_name = var.frontend_host_name
  }
}
