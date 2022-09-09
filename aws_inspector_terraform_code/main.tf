resource "aws_inspector_resource_group" "bar" {
  tags = {
    Name = "test"
  }
}

resource "aws_inspector_assessment_target" "myinspect" {
  name = var.assessment_target_name
  resource_group_arn = "${aws_inspector_resource_group.bar.arn}"
}

resource "aws_inspector_assessment_template" "test" {
  name       = var.assessment_template_name
  target_arn = "${aws_inspector_assessment_target.myinspect.arn}"
  duration   = var.duration

  rules_package_arns = var.rules_package_arns
}
 
 