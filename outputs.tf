output "container_id" {
  description = "ID of the running container"
  value       = docker_container.nginx.id
}

output "container_name" {
  description = "Name of the running container"
  value       = docker_container.nginx.name
}

output "access_url" {
  description = "URL to access the app"
  value       = "http://localhost:${var.external_port}"
}
