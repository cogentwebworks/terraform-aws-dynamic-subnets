module "label" {
  source              = "git::https://github.com/cogentwebworks/terraform-null-label.git?ref=edge"
  attributes          = var.attributes
  namespace           = var.namespace
  environment         = var.environment
  stage               = var.stage
  delimiter           = var.delimiter
  name                = var.name
  tags                = var.tags
  additional_tag_map  = var.additional_tag_map
  regex_replace_chars = var.regex_replace_chars
  label_order         = var.label_order
  context             = var.context
  enabled             = var.enabled
}
