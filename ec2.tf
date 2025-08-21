resource "aws_instance" "this" {
    ami = "ami-0de716d6197524dd9"
    vpc_security_group_ids = [aws_security_group.allow_tls.id]
    instance_type = "t3.micro"
    tags = {
        Name = "terraform-demo"
        Purpose = "terraform-practice"
    }
  
}

resource "aws_security_group" "allow_tls" {
    name = "allow_tls"
    description = "Allow TLS inbound traffic and all outbond traffic"

    egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
    from_port = 22
    to_port   = 22
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
    }

    tags = {
        Name = "allow tls"
    }
}
