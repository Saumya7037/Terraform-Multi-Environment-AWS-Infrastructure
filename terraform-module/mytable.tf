resource "aws_dynamodb_table" "dynamo-table" {
  name         = "${var.my-env}-dynamo-table"
  billing_mode = "PAY_PER_REQUEST"
  attribute {
    name = "id"
    type = "S"
  }
  hash_key = "id"
  tags = {
    name        = "${var.my-env}-dynamo-table"
    environment = var.my-env
  }

}
