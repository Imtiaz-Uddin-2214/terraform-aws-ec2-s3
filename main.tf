# EC2 Instance
resource "aws_instance" "my_ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  tags = {
    Name = "Terraform-EC2"
  }
}

# S3 Bucket
resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name

  tags = {
    Name = "Terraform-S3"
  }
}
