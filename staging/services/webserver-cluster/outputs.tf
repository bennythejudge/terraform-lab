output "elb_ip" {
    value = "${aws_elb.elb.dns_name}"
}

output "db_address" {
  value = "${data.terraform_remote_state.db.address}"
}

output "db_port" {
  value = "${data.terraform_remote_state.db.port}"
}
