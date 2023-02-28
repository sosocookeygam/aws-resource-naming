# AWS-Resource-Naming
This module was created to help our organization enforce strict naming of resources created in our AWS environment by developers.

Prerequisite:

pbp - Required: Is a fixed value that must be at the start. This is to indicate that the resource was deployed by the org. 

{domain} - Required: Must be from one of the following accepted values from the list of domains (reporting|data|platform|fron tend|backend) 

{service_name} - Optional: Alphanumeric and with no spaces; when service name is not provided, a random string (length 8) is created 

{environment} - Optional: Must be from one of the following accepted values development and production

Usage:

This is an example of how the module can be used in your environment:

module “convention”

source = "github.com/sosocookeygam/aws-resource-naming"

domain = “data ”

service_name = “EC2 ”

environment = “production”

