# Manage Check Point rulebase with Terraform

* adopted from work for CPX by [rdast](https://github.com/rdarst) https://github.com/rdarst/CPX2020_Tech_Table_A_and_O/tree/master/Terraform 


## Usage

Enable Management API and create relevant API user to enter to terraform.tfvars below based on provided example:

```bash
git clone http://github.com/mkol5222/tf-cp-rulebase
cd tf-co-rulebase/terraform
cp terraform.tfvars.sample terraform.tfvars
code terraform.tfvars
terraform init
terraform plan
terraform apply
```

Look for new Security Package called *TerraformPolicyDemo* in SmartConsole.