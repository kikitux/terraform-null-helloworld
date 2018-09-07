variable "word" {
  description = "a variable to be used on the privisioning"
}

resource "null_resource" "helloWorld" {
  provisioner "local-exec" {
    command = "echo hello world"
  }
}

resource "null_resource" "helloVar" {
  provisioner "local-exec" {
    command = "echo hello ${var.word}"
  }
}
