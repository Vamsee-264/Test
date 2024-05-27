
module "resource_groups" {
  source = "../../service"
  for_each = {
    for key, value in try(local.settings.resource_groups, {}) : key => value
    if try(value.reuse, false) == false && try(value.enabled, false) == true
  }

  resource_group_name = each.value.name
  resource_group      = each.value
  global_settings     = local.settings
  tags                = try(each.value.tags, null)
}


