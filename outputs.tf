

output "url" {
  description = "Browser URL for container"
  value = join(":", ["http://localhost", tostring(var.external_port)])
}


