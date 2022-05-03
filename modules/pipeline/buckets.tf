resource "aws_s3_bucket" "source" {
  bucket        = format("%s-%s-%s-pipeline", var.cluster_name, var.app_service_name, var.account_id)

}

resource "aws_s3_bucket_acl" "source_bucket_acl" {
  bucket =      aws_s3_bucket.source.id
  acl           = "private"
  
}

