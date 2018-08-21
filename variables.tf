variable "global_vars" {
  type = "list"

  default = [
    {
      name      = "/production/frontend/url"
      value     = "dev.company.com"
      type      = "String"
      overwrite = "true"
    },
  ]
}

variable "dev_vars" {
  type = "list"

  default = [
    {
      name      = "/dev/frontend/url"
      value     = "dev.company.com"
      type      = "String"
      overwrite = "true"
    },
  ]
}

variable "test_vars" {
  type = "list"

  default = [
    {
      name      = "/test/frontend/url"
      value     = "dev.company.com"
      type      = "String"
      overwrite = "true"
    },
  ]
}
