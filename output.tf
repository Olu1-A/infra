/*
# Terraform Output Values

# EC2 Instance Public IP
output "instance_publicip" {
  description = "EC2 Instance Public IP"
  value = aws_instance.myec2vm.public_ip
}
# value = resource_type.resource_name.output_desired


# EC2 Instance Public DNS
output "instance_publicdns" {
  description = "EC2 Instance Public DNS"
  value = aws_instance.myec2vm.public_dns
}
# value = resource_type.resource_name.output_desired
*/

#how to pass output(attributes) for lists variable
output "for_output_list" {
  description = "For Loop with List"
  value = [for instance in aws_instance.myec2vm: instance.public_dns]
}
#i.e value= [for aws_resource_type.name_of_your_resource: what you want as output]