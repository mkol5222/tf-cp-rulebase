variable "az-appid" { 
  description = "Azure Application ID"
}
variable "az-secret" { 
  description = "Azure Application ID Secret"
}
variable "az-tenantid" {
    description = "Azure Tenant ID"
}


resource "checkpoint_management_azure_data_center_server" "testAzure" {
  name = "myAzure"
  authentication_method = "service-principal-authentication"
  directory_id = var.az-tenantid
  application_id = var.az-appid
  application_key =  var.az-secret
}

resource "checkpoint_management_data_center_query" "example" {
  name         = "myQuery"
  data_centers = ["myAzure"]
  query_rules {
    key_type = "predefined"
    key      = "name-in-data-center"
    values   = ["firstVal", "secondVal"]
  }
}

resource "checkpoint_management_data_center_query" "uprod" {
  name         = "Ubuntu in prod on myAzure"
  data_centers = ["myAzure"]
    query_rules {
    key_type = "predefined"
    key      = "type-in-data-center"
    values   = ["Virtual Machine"]
  }
  query_rules {
    key_type = "tag"
    key      = "app"
    values   = ["ubuntu"]
  }
    query_rules {
    key_type = "tag"
    key      = "env"
    values   = ["prod"]
  }
}