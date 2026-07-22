resource "aws_s3_bucket" "my-bucket" {
  bucket = "${var.my-env}-project-s3"
  tags = {
    name        = "${var.my-env}-project-s3"
    environment = var.my-env
  }
}
