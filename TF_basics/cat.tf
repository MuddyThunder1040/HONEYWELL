resource "local_file" "cat" {
  filename = "${path.module}/${var.file_name}"
  content  = "${random_pet.my_pet.id} ${var.file_content}"
#     file_permission = "0700"
#     lifecycle {
#     #   create_before_destroy = true
#     prevent_destroy = true
#    # ignore_changes = [filename, content, file_permission]

#     }
}

resource "random_pet" "my_pet" {
  prefix    = var.prefix
  separator = var.separator
  length    = var.length
}

# resource "aws_instance" "webserver" {
#     ami          = "ami-0c55b159cbfafe1f0"
#     instance_type = "t2.micro"

# }
data "local_file" "dog" {
    filename = "${path.module}/dog.txt"
}
resource "local_file" "pet" {
    filename = "${path.module}/pet.txt"
    content = data.local_file.dog.content
}

resource "aws_iam_user" "admin-user" {
    name = "Lucy"
    tags = {
      description = "Technical Team Lead"
    }
  
}

resource "aws_iam_policy" "adminUser" {
  name = "AdminUser"    
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "*",
      "Resource": "*"
    }
  ]
}
EOF
}

resource "aws_iam_user_policy_attachment" "lucy-admin-access" {
    user       = aws_iam_user.admin-user.name
    policy_arn = aws_iam_policy.adminUser.arn
}