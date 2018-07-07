resource "aws_instance" "webserver" {
  ami           = "ami-40d28157"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["${aws_security_group.sg-webserver.id}"]

  user_data = <<-EOF
              #!/bin/bash
              echo "Hello, World" > index.html
              nohup busybox httpd -f -p 8080 &
              EOF

  tags {
    Name = "terraform-example"
    Owner = "benedetto"
  }
}

resource "aws_security_group" "sg-webserver" {
  name = "benedetto-webserver"

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

output "pub_ip" {
    value = "${aws_instance.webserver.public_ip}"
}
