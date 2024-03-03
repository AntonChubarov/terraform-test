resource "null_resource" "health_check" {

  provisioner "local-exec" {
    command = "/bin/bash build.sh test_lambda"
  }
}