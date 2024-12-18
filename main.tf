terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
    }
  }
}

variable "pet_name_length" {
  type        = number
  description = "Number of words in pet name"
  default     = 5
}

variable "animal_name_length" {
  type        = number
  description = "Number of words in animal name"
  default     = 5
}

module "pet" {
  source = "./terraform-random-petname"

  pet_name_length = var.pet_name_length
  separator       = "." # Change the separator to a period
}

module "animal" {
  source = "./terraform-random-petname"

  pet_name_length = var.animal_name_length
}

output "pet_name" {
  description = "Here is the name of your new pet!"
  value       = module.pet.name
  sensitive   = true
}

output "animal_name" {
  description = "Here is the name of your new animal!"
  value       = module.animal.name
  sensitive   = true
}
