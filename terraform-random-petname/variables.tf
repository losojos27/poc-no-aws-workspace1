variable "pet_name_length" {
  type        = number
  description = "Number of words in pet name"
  default     = 2
}

variable "separator" {
  type        = string
  description = "Separator between words in pet name"
  default     = "-"
}
