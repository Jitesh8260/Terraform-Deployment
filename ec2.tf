resource "aws_instance" "smartyy_ec2" {
  ami                  = "ami-007020fd9c84e18c7" # Ubuntu 22.04 LTS – ap-south-1
  instance_type        = "t2.micro"
  key_name             = "smarty-key"
  user_data            = file("${path.module}/user_data.sh")
  iam_instance_profile = aws_iam_instance_profile.codedeploy_instance_profile.name

  tags = {
    Name = "smarty-ec2"
  }

  metadata_options {
    http_tokens            = "optional"
    http_endpoint          = "enabled"
    instance_metadata_tags = "enabled"   # ✅ Required for CodeDeploy tag access
  }
}
