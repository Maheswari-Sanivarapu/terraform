locals {
    final_name = "${var.project}.${var.environment}.${var.component}"
    tag_name = merge (
        var.common_tags,
        {
            environment = "prod"
            version = 1.0
        }
    )
}