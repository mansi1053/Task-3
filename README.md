Create files for your project
  - provider.tf
  - main.tf
  - .gitignore

Configure AWS credentials 
   - aws configure
Add your AWS - Access Key
             - Secret Key
             - Region (ap-south-1)

Use AWS S3 for store the terraform.tfstate file

Initialize Terraform
  -  terraform init

See What Will Be Created
  -  terraform plan

Apply (Run) the Project
  -  terraform apply
  -  terraform apply --auto-approve

Check Results
  -  Go to http://localhost:8080 — You should see the NGINX page.
  -  Go to your AWS S3 Console — You should see the bucket my-nginx-docker-bucket.

Push Code to GitHub
  - git init
  - git add -A
  - git commit -m "commit msg"
  - git branch -M main
  - git remote add origin https://github.com/your-username/your-repo-name.git
  - git push origin main

To destroy everything created by Terraform
  - terraform destroy
  - terraform destroy --auto-approve
