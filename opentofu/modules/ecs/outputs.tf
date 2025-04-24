output "ecs_cluster_name" {
  value = aws_ecs_cluster.main.name
}

output "ecs_service_name" {
  value = aws_ecs_service.main.name
}

output "load_balancer_dns_name" {
  value = aws_lb.main.dns_name
}

######### Monitoring #########
output "execution_role_arn" {
  description = "El ARN del rol de ejecución de ECS."
  value       = aws_iam_role.ecs_task_execution_role.arn
}

output "task_role_arn" {
  description = "El ARN del rol de tarea de ECS."
  value       = aws_iam_role.ecs_task_role.arn
}