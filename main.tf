resource "null_resource" "helloWorld" {
  provisioner "local-exec" {
    command = "echo hello world"
  }
  
  keepers = {
    timestamp = "${timestamp()}"
  }
  
}
