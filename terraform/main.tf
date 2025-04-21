provider "linode" {
  token = var.token
}

resource "linode_instance" "web" {
  label = "iac-demo"
  region = "us-east"
  type = "g6-nanode-1"
  image = "linode/ubuntu22.04"
  root_pass = var.root_pass

  tags = ["terraform", "demo"]
  private_ip = true
}

output "ip_address" {
  value = linode_instance.web.ip_address
}
