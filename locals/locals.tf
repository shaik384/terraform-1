locals {
  ami_id = data.aws_ami.joindevops.id
  instance_type = "t3.micro"
  name = "${var.project}-${var.environment}-${var.component}"
  aws_security_group = [aws_security_group.allow_tls.id]
}

