resource "aws_instance" "webservers" {
	count =  "${var.instance_count}"
	ami = "${var.webservers_ami}"
	instance_type = "${var.instance_type}"
	security_groups = ["${var.sg_id}"]
	subnet_id = "${var.instance_subnet_id}"
}
