resource "local_file" "example" {
  filename        = "${path.module}/example.txt"
  content         = "Hello, World!"
  file_permission = "0700"
}