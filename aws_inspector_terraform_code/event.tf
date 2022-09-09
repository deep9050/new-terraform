resource "aws_cloudwatch_event_rule" "inspector" {
  name                = "rule1"
  description         = "Scheduled Inspector Assessment for ${aws_inspector_assessment_template.test.arn}"
  is_enabled          = null 
  schedule_expression = var.schedule_expression
}

resource "aws_cloudwatch_event_target" "inspect" {
  rule      = aws_cloudwatch_event_rule.inspector.name
  target_id = "Amazon_Inspector_Assess"
  arn       = aws_inspector_assessment_template.test.arn
  role_arn  = "arn:aws:iam::465350127589:role/service-role/Amazon_EventBridge_Invoke_Inspector_Assessment_Temp_1109352603"
}