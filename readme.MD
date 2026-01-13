**terraform commands**
```
terraform init
terraform plan
terraform apply -auto-approve
terraform destroy -auto-approve
```

**resource_types**
```
1. aws_instance
2. aws_security_group
3. aws_route53_records
4. aws_vpc
```

**Terraform topics**

1. variables 
``` 
    Preferences
        1. command line variables 
        2. terraform.tfvars 
        3. environment variables 
        4. default variables 
        5. prompt variables 
```
2. data types
3. conditions
4. functions
5. terraform outputs
6. loops
    ```
    1. count based loop
    2. for or for each
    ```
7. terraform datasources
8. terraform merge function
9. terraform locals
10. state, remote state and locking
11. s3 buckets and dynamodb
12. terraform dymanic loops/blocks
13. provisioners
    ```
    1. local-exec
    2. remote-exec
    ```
14. when condition in terraform
15. Consistent infra across all env's
    ```
    1. tfvars
    2. terraform workspaces
    3. separate repos
    ```
16. tfvars
    ```
    1. terraform init --help
    2. terraform init -backend-config=dev/backend.tf
    3. terraform init -reconfigure -backend-config=prod/backend.tf
    4. terraform plan -var-file=dev/dev.tfvars
    5. terraform apply -var-file=dev/dev.tfvars -auto-approve
    6. terraform init -reconfigure -upgrade(when using git repo in user module and module developer latest code pushed to git repo) 
    ```
17. wokspace
    ```
    terraform.workspace == dev
    terraform workspace
    terraform workspace list
    terraform workspace new dev
    terraform workspace select dev
    terraform init
    terraform plan 
    terraform apply -auto-approve
    terraform workspace delete dev
    ```
18. Terraform modules
    ```
    1. root module(provider.tf, where we ran terraform commands in this path)
    2. child module(where the resource code is present...like resources etc.,)
    ```
19. drift detection
20. 