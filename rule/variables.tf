###############################################
# Module: AWS security group rule variables
###############################################

    variable "rule_type" {}
    variable "from_port" {}
    variable "to_port" {}
    variable "protocol" {}
    variable "cidr_blocks" { default = [] }
    variable "prefix_list_ids" { default = [] }

    variable "security_group_id" {}

    // cannot be specified with cidr_blocks
    variable "source_security_group_id" { default = "" }

    // security group itself will be added as a source to this ingress rule
    variable "self" { default = false }
