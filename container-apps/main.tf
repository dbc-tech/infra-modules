resource "azapi_resource" "aca" {
  for_each  = { for ca in var.container_apps : ca.name => ca }
  type      = "Microsoft.App/containerApps@2022-03-01"
  parent_id = var.resource_group_id
  location  = var.location
  name      = ca.name == null ? "ctap-${var.environment}-${var.domain}-${var.instance_version}" : ca.name

  body = jsonencode({
    properties : {
      managedEnvironmentId = var.aca_environment_id
      configuration = {
        ingress = {
          external   = each.value.ingress_enabled
          targetPort = each.value.ingress_enabled ? each.value.containerPort : null
        }
      }
      template = {
        containers = [
          {
            name  = each.value.container_name
            image = "${each.value.image}:${each.value.tag}"
            resources = {
              cpu    = each.value.cpu_requests
              memory = each.value.mem_requests
            }
            env = {
              for name, value in each.value.env : name => {
                name  = name
                value = value
              }
            }
          }
        ]
        scale = {
          minReplicas = each.value.min_replicas
          maxReplicas = each.value.max_replicas
        }
      }
    }
  })


  tags = {
    environment = var.environment
    domain      = var.domain
  }
}