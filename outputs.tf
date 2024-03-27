# returns lambda layer ARN
output "arn" {
  value = aws_lambda_layer_version.python_requests.arn
  description = "ARN of Lambda Layer created by this module"
}
