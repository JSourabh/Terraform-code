terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

# Pull the Docker image
resource "docker_image" "nginx" {
  name         = "nginx:${var.nginx_version}"
  keep_locally = false
}

# Run the Docker container
resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
  name  = var.container_name

  ports {
    internal = 80
    external = var.external_port
  }

  restart = "always"
}
