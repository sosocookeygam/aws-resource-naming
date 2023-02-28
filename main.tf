locals {
    name_format = "pbp-${var.domain}-${var.service_name != "" ? var.service_name : random_id.example.hex}-${var.environment}"
    naming_standard = substr(trimspace(local.name_format), 0, 50)

   
}


resource "random_id" "example" {
  byte_length = 4
}



