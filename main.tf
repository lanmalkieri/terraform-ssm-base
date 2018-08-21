module "store" {
  source = "./modules"

  write = [
    "${var.dev_vars}",
    "${var.global_vars}",
    "${var.test_vars}",
  ]

  tags = {
    ManagedBy = "Terraform"
  }
}
