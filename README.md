# Lambda Layer with Python Library **Requests**
When your Lambda need to import libraries, packaing all libraries along with your business logic is not recommended.  Instead you can upload libraries as Lambda Layers, so that multiple Lambda can access same layer.  

This module will create an AWS Lambda Layer with Python library **requests** .   This module is published in Terraform as [**TechieInYou/lambdalayer-python-requests/aws**](https://registry.terraform.io/modules/techieinyou/lambdalayer-python-requests/aws/latest). 

## What is Requests Library 
Requests is a simple, yet elegant, HTTP library which allows you to send HTTP/1.1 requests extremely easily.   See more details about this library [here](https://pypi.org/project/requests/)


## How this module works?
This module will

    1. create a local folder `lambdalayer` 
    2. install Requests library (using pip3) in the above folder
    3. after succussfull installation, it will package the folder
    4. create a Lambda Layer in AWS and will upload the package
    5. return the ARN of the Lambda Layer with version #


## Values needs to be provided

### Layer Name (Optional)
You can assign the Lambda Layer name by assigning variable __layer_name__.  If not provided, then the layer name will be **lib-python-requests**.  


### Python Runtime (Optional)
This module supports the following Python runtimes.  

| Version       | Identifier |	
|---------------|----------- |
| Python 3.12   | python3.12 |
| Python 3.11   | python3.11 |
| Python 3.10   | python3.10 |
| Python 3.9    | python3.9  |
| Python 3.8    | python3.8  |

You can change the runtime by assigning variable __python_runtime__.  If not provided, Layer will be created with default runtime __python3.12__