# returns lambda layer ARN
output "lambda_layer_python_requests_arn" {
  value = aws_lambda_layer_version.python_requests.arn
}
