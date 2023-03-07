resource "checkpoint_management_package" "CPX_Demo" {
  name = "TerraformPolicyDemo"
  access = true 
}

# resource "checkpoint_management_publish" "example" {

#    triggers = ["${timestamp()}"]
   
#  }