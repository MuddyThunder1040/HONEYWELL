resource "aws_s3_bucket" "finance" {
  bucket = "finance-bucket-${random_pet.my_pet.id}"
    tags = {
      description = "Finance bucket for storing financial data"
    }
}
resource "aws_s3_bucket_object" "finance-2025"{
  bucket  = aws_s3_bucket.finance.bucket
  key     = "Financal_output_Q4-2024.txt"
  source  = "${path.module}/Financal_output_Q4-2024.txt"
  etag    = filemd5("${path.module}/Financal_output_Q4-2024.txt")
}

resource "aws_dynamodb_table" "cars" {
  name = "cars"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "VIN"
  attribute {
    name = "VIN"
    type = "S"
  }
}

resource "aws_dynamodb_table_item" "cars" {
  table_name = aws_dynamodb_table.cars.name
  hash_key = aws_dynamodb_table.cars.hash_key
  item = <<EOF
  {
  
  "Manufacturer": {"S": "Toyota"},
  "Make": {"S": "Corolla"},
  "Year": {"N": "2004"},
  "VIN": {"S": "4Y1SL65848Z411439"}
}
{
  
  "Manufacturer": {"S": "Honda"},
  "Make": {"S": "Accord"},
  "Year": {"N": "2015"},
  "VIN": {"S": "4Y1SL65848Z411439"}
}
{
  
  "Manufacturer": {"S": "Ford"},
  "Make": {"S": "Focus"},
  "Year": {"N": "2018"},
  "VIN": {"S": "4Y1SL65848Z411439"}
}
{
  
  "Manufacturer": {"S": "Chevrolet"},
  "Make": {"S": "Malibu"},
  "Year": {"N": "2020"},
  "VIN": {"S": "4Y1SL65848Z411439"}
}
{
  
  "Manufacturer": {"S": "Nissan"},
  "Make": {"S": "Altima"},
  "Year": {"N": "2022"},
  "VIN": {"S": "4Y1SL65848Z411439"}
}
{
  
  "Manufacturer": {"S": "Hyundai"},
  "Make": {"S": "Elantra"},
  "Year": {"N": "2023"},
  "VIN": {"S": "4Y1SL65848Z411439"}
}
{
  
  "Manufacturer": {"S": "Kia"},
  "Make": {"S": "Forte"},
  "Year": {"N": "2024"},
  "VIN": {"S": "4Y1SL65848Z411439"}
}
{
  
  "Manufacturer": {"S": "Subaru"},
  "Make": {"S": "Impreza"},
  "Year": {"N": "2025"},
  "VIN": {"S": "4Y1SL65848Z411439"}
}
{
  
  "Manufacturer": {"S": "Volkswagen"},
  "Make": {"S": "Jetta"},
  "Year": {"N": "2026"},
  "VIN": {"S": "4Y1SL65848Z411439"}
}
{
  
  "Manufacturer": {"S": "Mazda"},
  "Make": {"S": "3"},
  "Year": {"N": "2027"},
  "VIN": {"S": "4Y1SL65848Z411439"}
}
{
  
  "Manufacturer": {"S": "Chrysler"},
  "Make": {"S": "300"},
  "Year": {"N": "2028"},
  "VIN": {"S": "4Y1SL65848Z411439"}
}
{
  
  "Manufacturer": {"S": "Dodge"},
  "Make": {"S": "Charger"},
  "Year": {"N": "2029"},
  "VIN": {"S": "4Y1SL65848Z411439"}
}
{
  
  "Manufacturer": {"S": "Jeep"},
  "Make": {"S": "Wrangler"},
  "Year": {"N": "2030"},
  "VIN": {"S": "4Y1SL65848Z411439"}
}
{
  
  "Manufacturer": {"S": "Buick"},
  "Make": {"S": "Regal"},
  "Year": {"N": "2031"},
  "VIN": {"S": "4Y1SL65848Z411439"}
}
{
  
  "Manufacturer": {"S": "GMC"},
  "Make": {"S": "Sierra"},
  "Year": {"N": "2032"},
  "VIN": {"S": "4Y1SL65848Z411439"}
}
{
  
  "Manufacturer": {"S": "Ram"},
  "Make": {"S": "1500"},
  "Year": {"N": "2033"},
  "VIN": {"S": "4Y1SL65848Z411439"}
}
{
  
  "Manufacturer": {"S": "Tesla"},
  "Make": {"S": "Model S"},
  "Year": {"N": "2034"},
  "VIN": {"S": "4Y1SL65848Z411439"}
}
{
  
  "Manufacturer": {"S": "Porsche"},
  "Make": {"S": "911"},
  "Year": {"N": "2035"},
  "VIN": {"S": "4Y1SL65848Z411439"}
}
{
  
  "Manufacturer": {"S": "BMW"},
  "Make": {"S": "3 Series"},
  "Year": {"N": "2036"},
  "VIN": {"S": "4Y1SL65848Z411439"}
}
{
  
  "Manufacturer": {"S": "Mercedes-Benz"},
  "Make": {"S": "C-Class"},
  "Year": {"N": "2037"},
  "VIN": {"S": "4Y1SL65848Z411439"}
}
{
  
  "Manufacturer": {"S": "Audi"},
  "Make": {"S": "A4"},
  "Year": {"N": "2038"},
  "VIN": {"S": "4Y1SL65848Z411439"}
}
{
  
  "Manufacturer": {"S": "Lexus"},
  "Make": {"S": "ES"},
  "Year": {"N": "2039"},
  "VIN": {"S": "4Y1SL65848Z411439"}
}
{
  
  "Manufacturer": {"S": "Infiniti"},
  "Make": {"S": "Q50"},
  "Year": {"N": "2040"},
  "VIN": {"S": "4Y1SL65848Z411439"}
}
EOF
} 