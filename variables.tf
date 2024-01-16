variable "layer_name" {
  type = string
  description = "Name of Lambda layer"
  default = "lib-python-requests"
}

variable "python_runtime" {
  type = string
  description = "Runtime version of Python, eg. python3.9"
  default = "python3.9"
}