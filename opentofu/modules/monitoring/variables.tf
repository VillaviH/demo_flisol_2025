variable "project_name" {
  description = "El nombre del proyecto."
  type        = string
}

variable "environment" {
  description = "El entorno (por ejemplo, dev, staging, prod)."
  type        = string
}

variable "ecs_cluster_id" {
  description = "El ID del clúster ECS."
  type        = string
}

variable "subnet_ids" {
  description = "Lista de subnets para las tareas de ECS."
  type        = list(string)
}

variable "security_group_id" {
  description = "El ID del grupo de seguridad para las tareas de ECS."
  type        = string
}

variable "execution_role_arn" {
  description = "El ARN del rol de ejecución de ECS."
  type        = string
}

variable "task_role_arn" {
  description = "El ARN del rol de tarea de ECS."
  type        = string
}

variable "aws_region" {
  description = "La región de AWS."
  type        = string
}