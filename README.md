Run this command
~~~
terraform init
~~~


# Goals
1. Configure a simple VPC module using Terraform. Remember to configure:
   
	Set up a main.tf file (provider, backend, module).					
3. In this VPC module, use the official HASHICORP repo.					
4. Apply this module to the RESEARCH account using different network ranges than those created in module 1.					
5. Create an S3 Bucket named symp-Tombstone-Silver.					
6. Apply the module pointing to this bucket.

   				
	Tip: terraform init -backend-config "bucket=symp-Tombstone-Silver"


	Tip2: terraform plan --target="module.vpc"				
8. Create an EC2 module that uses the VPCs created in the VPC module dynamically.						
