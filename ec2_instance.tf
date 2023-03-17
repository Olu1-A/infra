# EC2 Instance
resource "aws_instance" "myec2vm" {
  ami = data.aws_ami.aws_ec2.id
  instance_type = var.instance_type
  user_data = file("${path.module}/app1-install.sh")
  key_name = var.key_222
  vpc_security_group_ids = [ aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id   ]
  tags = {
    "Name" = "EC2 Demo 2"
  }
}
#resouces with specification of object wanted
# to call a resource using data source, pass the follow line below
#"resource " = data."resource_type"resource_name".id