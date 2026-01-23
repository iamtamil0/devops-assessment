resources "aws_instance" "devops_vm" {
    ami           = "ami-0c0ea8779fa9b5c7d"
    instance_type = "t2.micro"
    key_name      = var.key_name

    vpc_security_group_ids = [
        aws_security_group.app_sg.id
    ]

    tags = {
        Name = "devops-assessment"
    }
}

resource "aws_security_group" "app_sg" {
    name = "devops_sg"

    ingress {
        from_port   = 80
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port   = 443
        to_port     = 443
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
}