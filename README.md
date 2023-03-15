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

```
az ad sp create-for-rbac -n cloudguard-reader-client --years 99 --role Reader --scopes /subscriptions/f4ad5e85-ec75-4321-8854-ed7eb611f61d
```