output "address" {
  value = "${aws_db_instance.rds.address}"
}

output "port" {
  value = "${aws_db_instance.rds.port}"
}