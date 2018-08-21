resource "aws_ssm_parameter" "default" {
  count           = "${var.enabled == "true" ? length(var.write) : 0}"
  name            = "${lookup(var.write[count.index], "name")}"
  value           = "${lookup(var.write[count.index], "value")}"
  description     = "${lookup(var.write[count.index], "description", lookup(var.write[count.index], "name"))}"
  type            = "${lookup(var.write[count.index], "type", "SecureString")}"
  key_id          = "${lookup(var.write[count.index], "type", "SecureString") == "SecureString" && length(var.kms_arn) > 0 ? var.kms_arn : ""}"
  overwrite       = "${lookup(var.write[count.index], "overwrite", "false")}"
  allowed_pattern = "${lookup(var.write[count.index], "allowed_pattern", "")}"
  tags            = "${var.tags}"
}
