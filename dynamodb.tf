resource "aws_dynamodb_table" "machine_properties" {
  hash_key = "MachineID"
  read_capacity  = 5
  write_capacity = 5
  name = "${local.system_name}-MachineState"
  attribute {
    name = "MachineID"
    type = "S"
  }

  billing_mode = "PAY_PER_REQUEST"
}
resource "aws_dynamodb_table_item" "example" {
  table_name = aws_dynamodb_table.machine_properties.name
  hash_key   = aws_dynamodb_table.machine_properties.hash_key
  item = <<ITEM
{
  "MachineID": {"S": "i-02a93948e672ac837"}

}
ITEM
}