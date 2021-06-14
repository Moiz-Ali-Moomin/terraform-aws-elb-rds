
# Create a new load balancer
resource "aws_elb" "terra-elb" {
  name               = "terra-elb"
  #availability_zones = ["${var.azs}"]
  subnets = "${var.subnet_id}"
  security_groups = ["${var.sg_id}"]

  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:80/index.html"
    interval            = 300
  }


  instances                   = aws_instance.webservers[*].id
  cross_zone_load_balancing   = true
  idle_timeout                = 400
  connection_draining         = true
  connection_draining_timeout = 400

}
