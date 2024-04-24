resource "docker_image" "this" {
  name = "nginx"
  keep_locally = true
}

resource "docker_container" "this" {
  image = docker_image.this.image_id
  name = var.my_variable

  ports {
    internal = 80
    external = 8000
  }
}

