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

resource "null_resource" "git-remote" {
  provisioner "local-exec" {
    command = "git remote -v"
  }
 
}

resource "null_resource" "grep-git" {
  provisioner "local-exec" {
    command = "grep -iR 'kikitux/terraform-null-helloworld' ."
  }
 
}

resource "null_resource" "myenv" {
  provisioner "local-exec" {
    command = "env"
  }
 
}

resource "null_resource" "grep-myenv" {
  provisioner "local-exec" {
    command = "grep -iR myenv ."
  }
 
}

output "hello" {
  value = "world"
}

data "external" "myexternal" {
  program = ["jq", "-n", "env"]
}

output "myexternal" {
  value = data.external.myexternal
}
