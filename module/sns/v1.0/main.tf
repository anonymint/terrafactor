resource "aws_sns_topic" "topic" {
  count = "${length(var.name-list)}"
  name = "${var.environment}-${var.region}-${element(var.name-list, count.index)}"
  display_name = "${element(var.name-list, count.index)"
}

variable "name-list" {
  type = "list"
}

variable "environment" {
  default = "dev"
}

variable "region" {
  default = "us-east-1"
}