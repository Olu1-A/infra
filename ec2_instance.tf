# EC2 Instance
resource "aws_instance" "myec2vm" {
  ami = data.aws_ami.aws_ec2.id #from datasource
  #instance_type = var.instance_type
  #instance_type = var.instance_type_list[0] #forlist variable
  instance_type = var.instance_type_map["qa"] #for map variable
  user_data = file("${path.module}/app1-install.sh")
  key_name = var.key_222 #for key pair var
  vpc_security_group_ids = [ aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id   ]
 # vpc_security_group_ids = [ aws_security_group.web_traffic.id ] #for dynamic block 
  count = 3 #controls the behaviour of aws objct.# of instances that will be created
  tags = {
    "Name" = "EC2_Demo-${count.index}"
  }
}
#resouces with specification of object wanted
# to call a resource using data source, pass the follow line below
#"resource " = data."resource_type"resource_name".id


