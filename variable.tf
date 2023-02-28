variable "domain" {
    type = string
    description = "name of the company domain that owns the resources"
    validation{
        condition = can(regex("^[a-zA-Z0-9_-]*$", var.domain == "data" || var.domain == "reporting" || var.domain == "frontend" || var.domain == "backend"))
        error_message = "Domain name should be any of the following: data, reporting, frontend or backend"
    }
}

variable "environment" {
    type = string
    description = "the environment where the resource is being created and used"
    validation{
        condition = can(regex("^[a-zA-Z0-9_-]*$", var.environment == "production" || var.environment == "development" || var.environment == ""))
        error_message = "Environment should be one of the following: development  or production"
    }
}

variable "service_name" {
    type = string
    description = "the aws resource that is created"
    
}





