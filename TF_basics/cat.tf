resource "local_file" "cat" {
  filename = "${path.module}/${var.file_name}"
  content  = var.file_content
}

resource "random_pet" "my_pet" {
  prefix = var.prefix
  separator = var.separator
    length   = var.length
}