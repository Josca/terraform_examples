terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}

resource "aws_iam_user" "user_1" {
  name = "tf-user-1"
}

resource "aws_iam_user" "user_2" {
  name = "tf-user-2"
}

resource "aws_iam_group" "users" {
  name = "tf-users"
}
resource "aws_iam_group_membership" "users" {
  name = "users"
  users = [
    aws_iam_user.user_1.name,
    aws_iam_user.user_2.name,
  ]
  group = aws_iam_group.users.name
}
