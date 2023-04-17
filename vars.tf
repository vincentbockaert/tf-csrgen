variable "cert_dns_names" {
  type = list(string)
}
variable "cert_ip_addresses" {
  type = list(string)
}
variable "cert_subject" {
  type = list(string)
}
variable "cert_uris" {
  type = list(string)
}
variable "cert_common_name" {
  type = string
}

variable "cert_organization" {
  type = string
  default = ""
}

variable "key_algo" {
  type = string
  default = "RSA"
  description = "Algorithm to use for the TLS Private Key"

  validation {
    condition     = contains(["RSA", "ECDSA", "ED25519"], var.key_algo)
    error_message = "Allowed values for input_parameter are \"RSA\", \"ECDSA\", or \"ED25519\"."
  }
}

variable "ecdsa_curve_bits" {
  type = number
  default = 384
}

variable "rsa_bits" {
  type = number
  default = 2048
}