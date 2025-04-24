output "vpc_id" {
  value       = module.vpc.vpc_id
  description = "ID de la VPC"
}

######## Monitoring Module ##########
output "prometheus_service_name" {
  description = "El nombre del servicio ECS para Prometheus."
  value       = module.monitoring.prometheus_service_name
}

output "grafana_service_name" {
  description = "El nombre del servicio ECS para Grafana."
  value       = module.monitoring.grafana_service_name
}