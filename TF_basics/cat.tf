resource "local_file" "cat" {
  filename = "${path.module}/${var.file_name}"
  content  = "${random_pet.my_pet.id} ${var.file_content}"
}

resource "random_pet" "my_pet" {
  prefix = var.prefix
  separator = var.separator
    length   = var.length
}

# resource "aws_instance" "webserver" {
#     ami          = "ami-0c55b159cbfafe1f0"
#     instance_type = "t2.micro"
  
# }
