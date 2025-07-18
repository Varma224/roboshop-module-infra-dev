module "component" {
 source = "git::https://github.com/Varma224/terraform-aws-roboshop.git?ref=main"
 for_each = var.components
 component = each.key
 rule_priority = each.value.rule_priority

}