output "private" {
  value = tls_private_key.key.private_key_pem
  sensitive = true
}

output "public" {
  value = tls_private_key.key.public_key_pem
  sensitive = true
}

output "csr" {
  value = tls_cert_request.csr.cert_request_pem
}

output "key_algorithm" {
  value = "Private key algorithm: ${tls_private_key.key.algorithm}"
}