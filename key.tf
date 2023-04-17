# private key
resource "tls_private_key" "key" {
  algorithm   = var.key_algo
  ecdsa_curve = var.key_algo == "ECDSA" ? var.ecdsa_curve_bits : null
  rsa_bits = var.key_algo == "RSA" ? var.rsa_bits : null
}