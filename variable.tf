
variable "source_file_name" {
   description = "lambda function source file"
}

variable "output_file_name" {
   description = "lambda function output path"  
}


variable "ephemeral_storage_size" {
    description = "lambda function ephemeral storage size" 
    type = number 
}

variable "function_name" {
    description = ""
    type = string
  
}

variable "handler" {
    description = ""
    type = string
  
}

variable "runtime" {
    description = ""
    type = string
  
}

variable "role_arn" {
    description = ""
    type = string
  
}

variable "tags" {
  
}


variable "env_variables" {
  
}
