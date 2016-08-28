###############################################
# Module: AWS security group outputs
###############################################



output "id" {
  value = "${aws_security_group.main_security_group.id}"
}