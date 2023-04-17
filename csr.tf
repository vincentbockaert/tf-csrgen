resource "tls_cert_request" "csr" {
  private_key_pem = tls_private_key.key.private_key_pem

  subject {
    common_name  = var.cert_common_name
    organization = var.cert_organization
  }
}