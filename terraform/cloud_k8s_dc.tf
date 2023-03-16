
# resource "checkpoint_management_kubernetes_data_center_server" "testKubernetes" {
#   name       = "MyKubernetes"
#   hostname   = "https://aks2-azure-"
#   token_file = "ZXlKaGJHY2l
#  ignore_warnings = true
#  unsafe_auto_accept = true
# }

# resource "checkpoint_management_add_data_center_object" "example" {
#   name = "AKS1 ns default"
#   #uri = "/Namespaces"
#   data_center_name = "AKS1"
#   uid_in_data_center = "namespace_default"
# }

# resource "checkpoint_management_add_data_center_object" "example2" {
#   name = "AKS2 ns default"
#   #uri = "/Namespaces"
#   data_center_name = "AKS2"
#   uid_in_data_center = "namespace_default"
# }

# resource "checkpoint_management_add_data_center_object" "example4" {
#   name = "AKS2 ns space1"
#   #uri = "/Namespaces"
#   data_center_name = "AKS2"
#   uid_in_data_center = "namespace_space1"
# }


# resource "checkpoint_management_add_data_center_object" "example5" {
#   name = "AKS1 ns space1"
#   #uri = "/Namespaces"
#   data_center_name = "AKS1"
#   uid_in_data_center = "namespace_space1"
# }

# # resource "checkpoint_management_add_data_center_object" "example3" {
# #   name = "app=web2"
# #   uri = "/Labels/app/web2"
# #   data_center_name = "AKS2"
# #   #uid_in_data_center = "app_web2"
# # }

variable "aks1_hostname" {
    description = "AKS hostname"
}
variable "aks1_token" {
    description = "AKS token"
}

resource "checkpoint_management_kubernetes_data_center_server" "aks1" {
  name       = "AKS1"
  hostname   = var.aks1_hostname
  token_file = var.aks1_token
  unsafe_auto_accept = true
  ignore_warnings = true

}

resource "checkpoint_management_data_center_query" "aks1-test-web1" {
  name         = "AKS1 webka1 in test"
  data_centers = [checkpoint_management_kubernetes_data_center_server.aks1.name]

  query_rules {
    key_type = "tag"
    key      = "app"
    values   = ["webka1"]
  }
    query_rules {
    key_type = "tag"
    key      = "env"
    values   = ["test"]
  }
    lifecycle {
    ignore_changes = [
     
      query_rules,
    ]
  }
}

resource "checkpoint_management_data_center_query" "pods-in-default" {
  name         = "pods in default NS"
  data_centers = [checkpoint_management_kubernetes_data_center_server.aks1.name]

  # query_rules {
  #   key_type = "tag"
  #   key      = "app"
  #   values   = ["webka1"]
  # }
  #   query_rules {
  #   key_type = "tag"
  #   key      = "env"
  #   values   = ["prod"]
  # }
    query_rules {
    key_type = "tag"
    key      = "__namespace"
    values   = ["default"]
  }
    lifecycle {
    ignore_changes = [
     
      query_rules,
    ]
  }
}

resource "checkpoint_management_data_center_query" "aks1-prod-web1b" {
  name         = "AKS1 webka1 in prod"
  data_centers = [checkpoint_management_kubernetes_data_center_server.aks1.name]

  query_rules {
    key_type = "tag"
    key      = "app"
    values   = ["webka1"]
  }
    query_rules {
    key_type = "tag"
    key      = "env"
    values   = ["prod"]
  }
    query_rules {
    key_type = "tag"
    key      = "__namespace"
    values   = ["demo"]
  }
    lifecycle {
    ignore_changes = [
     
      query_rules,
    ]
  }
}

resource "checkpoint_management_data_center_query" "pavel" {
  name         = "Pavel DCQ"
  data_centers = [checkpoint_management_kubernetes_data_center_server.aks1.name]

  query_rules {
    key_type = "tag"
    key      = "app"
    values   = ["pavel"]
  }
  lifecycle {
    ignore_changes = [
     
      query_rules,
    ]
  }
}