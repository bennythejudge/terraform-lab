variable "server_port" {
    description = "The port for the HTTP request"
}

#resource "aws_instance" "webserver" {
#  ami           = "ami-40d28157"
#  instance_type = "t2.micro"
#  vpc_security_group_ids = ["${aws_security_group.sg-webserver.id}"]
#
#  user_data = <<-EOF
#              #!/bin/bash
#              echo "Hello, World" > index.html
#              nohup busybox httpd -f -p "${var.server_port}" &
#              EOF
#
#  tags {
#    Name = "terraform-example"
#    Owner = "benedetto"
#  }
#}
#
#resource "aws_security_group" "sg-webserver" {
#  name = "benedetto-webserver"
#
#  ingress {
#    from_port   = "${var.server_port}"
#    to_port     = "${var.server_port}"
#    protocol    = "tcp"
#    cidr_blocks = ["0.0.0.0/0"]
#  }
#}
#
#output "pub_ip" {
#    value = "${aws_instance.webserver.public_ip}"
#}
