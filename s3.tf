resource "aws_s3_bucket" "artifact_bucket" {
  bucket        = "${var.project_name}-pipeline-artifacts-${random_id.id.hex}"
  force_destroy = true
}

resource "random_id" "id" {
  byte_length = 4
}
