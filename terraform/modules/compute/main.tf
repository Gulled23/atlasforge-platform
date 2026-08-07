resource "aws_instance" "web" {

  ami           = var.ami_id
  instance_type = var.instance_type

  subnet_id = var.public_subnet_id

  key_name = var.key_name

  vpc_security_group_ids = [
    var.security_group_id
  ]

  associate_public_ip_address = true

  user_data = <<-EOF
#!/bin/bash
apt-get update -y
apt-get install -y nginx
systemctl enable nginx
systemctl start nginx

echo "<h1>AtlasForge 002 running</h1>" > /var/www/html/index.html
EOF

  tags = {
    Name = "${var.project_name}-${var.environment}-web"
  }
}
