resource "docker_image" "nginx_image" {
  name = "nginx:latest"
}

resource "docker_container" "nginx_container" {
  name  = "my-nginx-container"
  image = docker_image.nginx_image.name

  ports {
    internal = 80
    external = 8080
    }
}

#AWS S3 bucket to store Docker images
module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "my-nginx-docker-bucket"
  acl    = "private"
  
  control_object_ownership = true
  object_ownership         = "ObjectWriter"

  versioning = {
    enabled = true
  }
}