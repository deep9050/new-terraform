###for main.tf########

variable "assessment_target_name" {
  type        = string
  # default     = "target-1"
}

variable "assessment_template_name" {
  type        = string
  # default     = "template-1"
}

variable "duration" {
  type        = number
  description = "The max duration of the Inspector assessment run in seconds"
  default     = "360" 
}

variable "rules_package_arns" {
  type        = list(string)
  description = "Inspector rule arns by region"
  default = [ "arn:aws:inspector:us-east-1:316112463485:rulespackage/0-gEjTy7T7",
    "arn:aws:inspector:us-east-1:316112463485:rulespackage/0-rExsr2X8",
    "arn:aws:inspector:us-east-1:316112463485:rulespackage/0-R01qwB5Q",
    "arn:aws:inspector:us-east-1:316112463485:rulespackage/0-gBONHN9h",
    ]
}

#######for event.tf #######
 
variable "schedule_expression" {
  type        = string
  default     = "rate(5 minutes)"
}

