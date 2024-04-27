resource "docker_image" "this" {
  name = "nginx"
  keep_locally = true
}

resource "docker_container" "this" {
  image = docker_image.this.image_id
  name = "terraform-container"

  ports {
    internal = 80
    external = var.external_port
    protocol = "tcp"
  }
}

