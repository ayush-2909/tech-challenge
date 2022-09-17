resource "aws_lb" "test" {
  name               = var.lb_name
  internal           = var.internal
  load_balancer_type = var.lb_type
  security_groups    = var.sg
  subnets            = [var.subnet_id]

  enable_deletion_protection = var.deletion_protection

  access_logs {
    bucket  = aws_s3_bucket.bucket.bucket
    prefix  = var.logspace_prefix
    enabled = var.log_enabled
  }

  tags = var.tags
}

resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name

  tags = var.tags
}
