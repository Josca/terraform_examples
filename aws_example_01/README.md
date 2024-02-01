# AWS Terraform example

~~~bash
terraform init

# Import existing resources if needed (from previous work)
terraform import aws_iam_user.user_1 tf-user-1
terraform import aws_iam_user.user_2 tf-user-2
terraform import aws_iam_group.users tf-users

terraform show # check current state
# ... make some changes
terraform plan
terraform apply
terraform destroy # ... in the end
~~~
