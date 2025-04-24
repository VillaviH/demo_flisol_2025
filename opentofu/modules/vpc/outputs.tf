output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_ids" {
  value = [aws_subnet.public_a.id, aws_subnet.public_b.id]
}

####### Monitoring Module ##########
output "default_security_group_id" {
  description = "El ID del grupo de seguridad predeterminado de la VPC."
  value       = aws_security_group.default.id
}