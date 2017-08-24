resource "aws_sns_topic" "topic" {
  count = "${length(var.name_list)}"
  name = "${var.environment}-${var.region}-${element(var.name_list, count.index)}"
  display_name = "${element(var.name_list, count.index)}"
}