
# resource "checkpoint_management_kubernetes_data_center_server" "testKubernetes" {
#   name       = "MyKubernetes"
#   hostname   = "https://aks2-azure-chkp-demo--f4ad5e-xqu2wegj.hcp.westeurope.azmk8s.io:443"
#   token_file = "ZXlKaGJHY2lPaUpTVXpJMU5pSXNJbXRwWkNJNklsbDZhVE5CYTI5bVRtbHhNR1ZDZDNWb2IwRTBiM3BDTmpKb1VHaEJSRGRIT0haellqSjFlbFp4ZVdjaWZRLmV5SnBjM01pT2lKcmRXSmxjbTVsZEdWekwzTmxjblpwWTJWaFkyTnZkVzUwSWl3aWEzVmlaWEp1WlhSbGN5NXBieTl6WlhKMmFXTmxZV05qYjNWdWRDOXVZVzFsYzNCaFkyVWlPaUprWldaaGRXeDBJaXdpYTNWaVpYSnVaWFJsY3k1cGJ5OXpaWEoyYVdObFlXTmpiM1Z1ZEM5elpXTnlaWFF1Ym1GdFpTSTZJbU5zYjNWa1ozVmhjbVF0WTI5dWRISnZiR3hsY2lJc0ltdDFZbVZ5Ym1WMFpYTXVhVzh2YzJWeWRtbGpaV0ZqWTI5MWJuUXZjMlZ5ZG1salpTMWhZMk52ZFc1MExtNWhiV1VpT2lKamJHOTFaR2QxWVhKa0xXTnZiblJ5YjJ4c1pYSWlMQ0pyZFdKbGNtNWxkR1Z6TG1sdkwzTmxjblpwWTJWaFkyTnZkVzUwTDNObGNuWnBZMlV0WVdOamIzVnVkQzUxYVdRaU9pSXlPR0l6WW1FeE55MWtOelpqTFRRek5EVXRZbUV6WVMxbFpXTTVaREV3WVdGa05UY2lMQ0p6ZFdJaU9pSnplWE4wWlcwNmMyVnlkbWxqWldGalkyOTFiblE2WkdWbVlYVnNkRHBqYkc5MVpHZDFZWEprTFdOdmJuUnliMnhzWlhJaWZRLm5PVENDUHhpTFlWaGQ3R0xOMWRxU1MwcjV5S2pqYkg0Qkk2VVJFak1uZS15Z3hXczNsWlJfQjBQUDVMS0puNWV5aDJ3WXZnTDdHVHpXOV9KVWY3S3c2VzdOdVoyc3JraXpiMnBEVzNTcmdVNExYUmQtME51d085cHNmREVRbnpiOTRTV1p6ZHFSQ3VBT3l1el9YdzdWZ2J1eXViNVE1NTFZMkc5NktLTlM2Zlp6cURKVzgwQmt2T3prR1BJSC12VFBTWG9Nb0dFamJaN2JiOHZOVWFsMFFkcDFwOEx0LWMtUGtIYmJpbURHNzUwa05fbXpxNHZtdG40ZHJkVWlCeEF3SmY4dFdTRnNTSHo0TS12cXBqWnYxUTRpX0VudTJfYkR5Zl9HX29FNnBQWW56SXkxdU9QWWtjMGNHQ1hhaWpqRklEM3JlSHB1R0NIQkJ5WTRUUFYtc2VBZnM4dEV3dEhtRWNqa1pGT3lSellDcXNZNUVfdHdaY05QVXlfWW95ZDducWUtQTc1WWY1ZUgwNGRJeTMxZE9MQ2o2OEF0Y2ZJVldnTk5pMmt6Z2IydDFCYlV3ZWdBdHpNQlhzSE80bVVIaTFUdWVkV2tMajdTaW9mc3diREJleV9GOXZVTlRhNnhqM0NtaHFYWVdscXNzckJHbzJSWXVJd0dVal9DZUJGYmpfM251Mnh4TjdRSjhJTGhRa05OR28ySWxwNUIzMFhKeEN3bV9NYmlfM1JOUnVWaGE1SFUxb2czYUprc0p2NTgySEtfMV9oRnpYbGRSZHEwSzlpdGVtLXVPWWpzOEp4M3pPLWhDMnI2RlplRkgxUlU3aWpMM2JrdWlCS293ZHNUWHlrOU41VnpDMlhIX0VMSGxpMTJjcS1fTGN4UjNEWnVWenRhcmJWajZ3Cg=="
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

resource "checkpoint_management_data_center_query" "aks1-test-web1" {
  name         = "AKS1 from test web1 pods"
  data_centers = ["AKS1"]

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
}

resource "checkpoint_management_data_center_query" "aks1-prod-web1" {
  name         = "AKS1 from prod web1 pods"
  data_centers = ["AKS1"]

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
}