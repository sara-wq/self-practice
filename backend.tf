terraform{
backend "s3" {
  bucket = "mysarabuck"
  key = "main"
  region = "us-east-1"
  dynamodb_table = "my-dynamodb-table"
  }
}
