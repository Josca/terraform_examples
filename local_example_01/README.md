# Create local files with Terraform
Use for starting with Terraform
Using [local](https://registry.terraform.io/providers/hashicorp/local/latest)

# Usage
~~~bash
terraform init # setup workspace, download deps
terraform plan # preview planned actions
terraform apply # apply planned actions
cat my_file_1.txt # check created file
terraform show # print result by terraform

# do some experimental changes in main.tf file (add file, change filename...)
terraform plan
terraform apply
cat my_file_1.txt
~~~
