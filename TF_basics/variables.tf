variable "prefix" {
  description = "Prefix for all resources"
  type        = string
  default     = "Animal"
  
}

variable "separator" {
  description = "Separator for all resources"
  type        = string
  default     = "-"
  
}

variable "length" {
  description = "Length of the random pet name"
  type        = number
  default     = 3
  
}

variable "file_name" {
  description = "Name of the file to be created"
  type        = string
  default     = "cat.txt"
  
}

variable "file_content" {
  description = "Content of the file to be created"
  type        = string
  default     = "lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua"
  
}