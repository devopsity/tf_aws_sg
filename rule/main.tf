###############################################
# Module: AWS security group rule
###############################################



resource "aws_security_group_rule" "main" {
    type = "${var.rule_type}"
    from_port = "${var.from_port}"
    to_port = "${var.to_port}"
    protocol = "${var.protocol}"
    cidr_blocks = "${compact(var.cidr_blocks)}"
    prefix_list_ids = "${compact(var.prefix_list_ids)}"

    security_group_id = "${var.security_group_id}"
    //source_security_group_id = "${var.source_security_group_id}"
}


// second version for sg's with the source_security_group_id 
// instead of cidr_blocks  variables
resource "aws_security_group_rule" "main_gs_source" {
    type = "${var.rule_type}"
    from_port = "${var.from_port}"
    to_port = "${var.to_port}"
    protocol = "${var.protocol}"
    //cidr_blocks = "${compact(var.cidr_blocks)}"
    prefix_list_ids = "${compact(var.prefix_list_ids)}"

    security_group_id = "${var.security_group_id}"
    source_security_group_id = "${var.source_security_group_id}"
}

// third version with self
resource "aws_security_group_rule" "main_gs_self" {
    type = "${var.rule_type}"
    from_port = "${var.from_port}"
    to_port = "${var.to_port}"
    protocol = "${var.protocol}"
    prefix_list_ids = "${compact(var.prefix_list_ids)}"
    self = "${var.self}"
    security_group_id = "${var.security_group_id}"
}