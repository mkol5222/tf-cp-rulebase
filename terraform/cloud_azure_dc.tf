# variable "az-appid" { 
#   description = "Azure Application ID"
# }
# variable "az-secret" { 
#   description = "Azure Application ID Secret"
# }
# variable "az-tenantid" {
#     description = "Azure Tenant ID"
# }


# resource "checkpoint_management_azure_data_center_server" "testAzure" {
#   name = "myAzure"
#   authentication_method = "service-principal-authentication"
#   directory_id = var.az-tenantid
#   application_id = var.az-appid
#   application_key =  var.az-secret
# }