resource "random_pet" "mypet" {
  keepers = {
    timestamp = "${timestamp()}"
  }

  separator = " "
}

resource "null_resource" "helloWorld" {
  provisioner "local-exec" {
    command = "echo hello ${random_pet.mypet.id}"
  }
 
}
