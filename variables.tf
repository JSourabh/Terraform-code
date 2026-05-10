variable "container_name" {
  description = "Name of the Docker container"
  type        = string
  default     = "my-nginx"
}

variable "nginx_version" {
  description = "Nginx Docker image tag"
  type        = string
  default     = "latest"
}

variable "external_port" {
  description = "Host port to map to container port 80"
  type        = number
  default     = 8080
}
