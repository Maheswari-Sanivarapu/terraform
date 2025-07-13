1. create provider
2. create resource block with no arguments then do terraform init after getting provider and resource
3. do terraform import aws_instance.any_name <instance-id>
4. after doing step-3 it will fetch all the details about resources in state file
5. using that state file which we got write the .tf file