

output "container_ports" {
  description = "Ports of the docker container"
  value = docker_container.this.ports
}


