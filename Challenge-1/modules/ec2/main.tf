resource "aws_instance" "app_server" {
  ami           = "${var.ami}"
  instance_type = "${var.instance_type}"

  network_interface {
    network_interface_id = aws_network_interface.nic.id
    device_index         = 0
  }

  tags = "${var.tags}"
}


resource "aws_network_interface" "nic" {
  subnet_id   = "${var.instance_subnet_id}"
  private_ips = "${var.private_ip}"

  tags = "${var.tags}"
}

output "security_groups" {
  description = "ID of sg"
  value       = aws_instance.app_server.security_groups
}