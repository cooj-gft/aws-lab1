output "public_ip" {
  value = aws_instance.ec2_lab1.public_ip
}
output "instance_id" {
  value = aws_instance.ec2_lab1.id
}