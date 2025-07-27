output "ec2_public_ip" {
  value = aws_instance.smartyy_ec2.public_ip
}
