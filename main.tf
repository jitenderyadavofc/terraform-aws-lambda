
resource "aws_lambda_function" "lambda_function" {
    function_name = var.function_name
    handler =  var.handler
    runtime = var.runtime
    role = var.role_arn
    filename = "${path.module}/output_files/${var.output_file_name}"

    source_code_hash = data.archive_file.lambda_function_zip.output_base64sha256
 
    ephemeral_storage {
         size =   var.ephemeral_storage_size
    }
    
    environment {
        variables = { for key, value in var.env_variables :
          key => value      
        }
    } 
   
    tags=merge(
    {"Name"=var.function_name},
    {
     for tag_key, tag_value in var.tags:
        tag_key=>tag_value  
     })

}