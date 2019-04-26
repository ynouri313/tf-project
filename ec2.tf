resource "aws_instance" "openldap" {
  ami           = "ami-08d658f84a6d84a80"
  instance_type = "t2.micro"
  key_name      = "yassine-aws-key"

  tags {
    Name = "openldap"
  }

  security_groups = ["${aws_security_group.sg_ssh.name}"]
}
