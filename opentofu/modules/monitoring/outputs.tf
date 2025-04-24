output "prometheus_service_name" {
  description = "El nombre del servicio ECS para Prometheus."
  value       = aws_ecs_service.prometheus.name
}

output "grafana_service_name" {
  description = "El nombre del servicio ECS para Grafana."
  value       = aws_ecs_service.grafana.name
}