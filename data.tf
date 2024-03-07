
data "archive_file" "lambda_function_zip" {
    type = "zip"
    source_file = "${path.module}/source_files/${var.source_file_name}"
    output_path = "${path.module}/output_files/${var.output_file_name}"
  
}