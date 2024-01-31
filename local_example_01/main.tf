terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.4"
    }
  }
}

resource "local_file" "file1" {
  content  = "Hello world!\n"
  filename = "./my_file_1.txt"
}
