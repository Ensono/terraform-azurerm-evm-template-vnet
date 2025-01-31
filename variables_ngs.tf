variable "nsg_rules" {
  description = "A map of NSG rules"
  type = map(object({
    name                                       = string
    priority                                   = number
    direction                                  = string
    access                                     = string
    protocol                                   = string
    source_port_range                          = optional(string, "")
    source_port_ranges                         = optional(list(string), [])
    destination_port_range                     = optional(string, "")
    destination_port_ranges                    = optional(list(string), [])
    source_address_prefix                      = optional(string, "")
    source_address_prefixes                    = optional(list(string), [])
    source_application_security_group_ids      = optional(list(string), [])
    destination_address_prefix                 = optional(string, "")
    destination_address_prefixes               = optional(list(string), [])
    destination_application_security_group_ids = optional(list(string), [])
    description                                = optional(string, "")
  }))
  default = {}
}
