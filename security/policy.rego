package domino.security

deny[msg] {
  input.image.tag == "latest"
  msg = "Production images must not use latest tag"
}
