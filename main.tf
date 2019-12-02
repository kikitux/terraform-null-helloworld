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


resource "null_resource" "myenv" {
  provisioner "local-exec" {
    command = "env"
  }
 
}

resource "null_resource" "grep" {
  provisioner "local-exec" {
    command = "grep -iR myenv ."
  }
 
}


