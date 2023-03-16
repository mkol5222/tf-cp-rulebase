
resource "checkpoint_management_access_rule" "rule100" {
  layer    = "${checkpoint_management_package.CPX_Demo.name} Network"
  position = { top = "top" }
  name     = "a Ubuntu prod to Internet"
  source   = [checkpoint_management_data_center_query.uprod.name]
  #source = [checkpoint_management_host.host6.name]
  enabled = true
  #destination = [checkpoint_management_dns_domain.ip-iol.name, checkpoint_management_dns_domain.ipconfig.name, checkpoint_management_dns_domain.ifconfig.name]
  destination        = ["Any"]
  destination_negate = false
  service            = [data.checkpoint_management_data_service_tcp.data_service_http.name, data.checkpoint_management_data_service_tcp.data_service_https.name]
  service_negate     = false
  action             = "Accept"
  action_settings = {
    enable_identity_captive_portal = false
  }
  track = {
    accounting              = false
    alert                   = "none"
    enable_firewall_session = true
    per_connection          = true
    per_session             = true
    type                    = "Log"
  }
}

resource "checkpoint_management_access_rule" "rule101" {
  layer    = "${checkpoint_management_package.CPX_Demo.name} Network"
  position = { below = checkpoint_management_access_rule.rule100.id }
  name     = "a Ubuntu test to Internet"
  source   = [checkpoint_management_data_center_query.utest.name]
  #source = [checkpoint_management_host.host6.name]
  enabled = true
  #destination = [checkpoint_management_dns_domain.ip-iol.name, checkpoint_management_dns_domain.ipconfig.name, checkpoint_management_dns_domain.ifconfig.name]
  destination        = ["Any"]
  destination_negate = false
  service            = [data.checkpoint_management_data_service_tcp.data_service_http.name, data.checkpoint_management_data_service_tcp.data_service_https.name]
  service_negate     = false
  action             = "Accept"
  action_settings = {
    enable_identity_captive_portal = false
  }
  track = {
    accounting              = false
    alert                   = "none"
    enable_firewall_session = true
    per_connection          = true
    per_session             = true
    type                    = "Log"
  }
}
resource "checkpoint_management_access_rule" "pods-in-default" {
  layer    = "${checkpoint_management_package.CPX_Demo.name} Network"
  position = { above = checkpoint_management_access_rule.webka1-test-ipiol.id }
  name     = "Pods in DEFAULT"
  #source = [checkpoint_management_data_center_query.uprod.name]
  source             = [checkpoint_management_data_center_query.pods-in-default.name]
  enabled            = true
  destination        = ["Any"]
  destination_negate = false
  service            = ["Any"]
  service_negate     = false
  #action = "Accept"
  action = "Drop"
  action_settings = {
    enable_identity_captive_portal = false
  }
  track = {
    accounting              = false
    alert                   = "none"
    enable_firewall_session = true
    per_connection          = true
    per_session             = true
    type                    = "Log"
  }
}

resource "checkpoint_management_access_rule" "webka1-test-ipiol" {
  layer    = "${checkpoint_management_package.CPX_Demo.name} Network"
  position = { above = checkpoint_management_access_rule.rule110.id }
  name     = "AKS1 webka1 in test - ip.iol.cz"
  #source = [checkpoint_management_data_center_query.uprod.name]
  source             = [checkpoint_management_data_center_query.aks1-test-web1.name]
  enabled            = true
  destination        = [checkpoint_management_dns_domain.ip-iol.name]
  destination_negate = false
  service            = [data.checkpoint_management_data_service_tcp.data_service_http.name, data.checkpoint_management_data_service_tcp.data_service_https.name]
  service_negate     = false
  action             = "Accept"
  action_settings = {
    enable_identity_captive_portal = false
  }
  track = {
    accounting              = false
    alert                   = "none"
    enable_firewall_session = true
    per_connection          = true
    per_session             = true
    type                    = "Log"
  }
}

// "checkpoint_management_data_center_query" "aks1-test-web1"
resource "checkpoint_management_access_rule" "rule110" {
  layer    = "${checkpoint_management_package.CPX_Demo.name} Network"
  position = { below = checkpoint_management_access_rule.rule101.id }
  name     = "AKS1 webka1 in test - egress"
  #source = [checkpoint_management_data_center_query.uprod.name]
  source             = [checkpoint_management_data_center_query.aks1-test-web1.name]
  enabled            = true
  destination        = ["Any"]
  destination_negate = false
  service            = [data.checkpoint_management_data_service_tcp.data_service_http.name, data.checkpoint_management_data_service_tcp.data_service_https.name]
  service_negate     = false
  action             = "Accept"
  action_settings = {
    enable_identity_captive_portal = false
  }
  track = {
    accounting              = false
    alert                   = "none"
    enable_firewall_session = true
    per_connection          = true
    per_session             = true
    type                    = "Log"
  }
}
resource "checkpoint_management_access_rule" "rule120" {
  layer    = "${checkpoint_management_package.CPX_Demo.name} Network"
  position = { below = checkpoint_management_access_rule.rule110.id }
  name     = "AKS1 webka1 in prod - egress"
  #source = [checkpoint_management_data_center_query.uprod.name]
  source             = [checkpoint_management_data_center_query.aks1-prod-web1b.name]
  enabled            = true
  destination        = ["Any"]
  destination_negate = false
  service            = [data.checkpoint_management_data_service_tcp.data_service_http.name, data.checkpoint_management_data_service_tcp.data_service_https.name]
  service_negate     = false
  action             = "Accept"
  action_settings = {
    enable_identity_captive_portal = false
  }
  track = {
    accounting              = false
    alert                   = "none"
    enable_firewall_session = true
    per_connection          = true
    per_session             = true
    type                    = "Log"
  }
}

resource "checkpoint_management_access_rule" "rule130" {
  layer    = "${checkpoint_management_package.CPX_Demo.name} Network"
  position = { below = checkpoint_management_access_rule.rule120.id }
  name     = "AKS1 from Pavel"
  #source = [checkpoint_management_data_center_query.uprod.name]
  source             = [checkpoint_management_data_center_query.pavel.name]
  enabled            = true
  destination        = ["Any"]
  destination_negate = false
  service            = [data.checkpoint_management_data_service_tcp.data_service_http.name, data.checkpoint_management_data_service_tcp.data_service_https.name]
  service_negate     = false
  action             = "Accept"
  action_settings = {
    enable_identity_captive_portal = false
  }
  track = {
    accounting              = false
    alert                   = "none"
    enable_firewall_session = true
    per_connection          = true
    per_session             = true
    type                    = "Log"
  }
}


resource "checkpoint_management_access_rule" "rule900" {
  layer    = "${checkpoint_management_package.CPX_Demo.name} Network"
  position = { below = checkpoint_management_access_rule.rule130.id }
  //position = { top = "top" }
  name     = "Logger from VNET"
  source   = [checkpoint_management_network.vnet.name]
  #source = [checkpoint_management_host.host6.name]
  enabled            = true
  destination        = ["Any"]
  destination_negate = false
  service            = ["Any"]
  service_negate     = false
  action             = "Accept"
  action_settings = {
    enable_identity_captive_portal = false
  }
  track = {
    accounting              = false
    alert                   = "none"
    enable_firewall_session = true
    per_connection          = true
    per_session             = true
    type                    = "Log"
  }
}
resource "checkpoint_management_access_rule" "rule902" {
  layer = "${checkpoint_management_package.CPX_Demo.name} Network"
  #position = {bottom = "bottom"}
  position = { below = checkpoint_management_access_rule.rule900.id }
  name     = "Logger to VNET."
  source   = ["Any"]
  #source = [checkpoint_management_host.host6.name]
  enabled            = true
  destination        = [checkpoint_management_network.vnet.name]
  destination_negate = false
  service            = ["Any"]
  service_negate     = false
  action             = "Accept"
  action_settings = {
    enable_identity_captive_portal = false
  }
  track = {
    accounting              = false
    alert                   = "none"
    enable_firewall_session = true
    per_connection          = true
    per_session             = true
    type                    = "Log"
  }
}

# resource "checkpoint_management_access_rule" "rule1" {
#   layer = "${checkpoint_management_package.CPX_Demo.name} Network"
#   position = {top = "top"}
#   name = "Rule 1"
#   source = [checkpoint_management_data_center_query.uprod.name, checkpoint_management_data_center_query.example.name, checkpoint_management_host.host1.name, checkpoint_management_host.host6.name, checkpoint_management_host.host3.name]
#   #source = [checkpoint_management_host.host6.name]
#   enabled = true
#   destination = [checkpoint_management_dns_domain.ipconfig.name]
#   destination_negate = false
#   service = [data.checkpoint_management_data_service_tcp.data_service_http.name, data.checkpoint_management_data_service_tcp.data_service_https.name]
#   service_negate = false
#   action = "Accept"
#   action_settings = {
#     enable_identity_captive_portal = false
#   }
#   track = {
#     accounting = true
# 	alert = "none"
#     enable_firewall_session = true
#     per_connection = true
#     per_session = true
#     type = "Log"
#   }
# }

# resource "checkpoint_management_access_rule" "rule2" {
#   layer = "${checkpoint_management_package.CPX_Demo.name} Network"
#   position = {below = checkpoint_management_access_rule.rule1.id}
#   name = "Rule 2"
#   source = [checkpoint_management_host.host2.name]
#   enabled = true
#   destination = ["Any"]
#   destination_negate = false
#   service = [checkpoint_management_service_tcp.service2.name, checkpoint_management_service_udp.service2.name]
#   service_negate = false
#   action = "Accept"
#   action_settings = {
#     enable_identity_captive_portal = false
#   }
#   track = {
#      type = "Log"
#     accounting = false
# 	alert = "none"
#     enable_firewall_session = true
#     per_connection = true
#     per_session = true
#     type = "Log"
#   }
# }

# resource "checkpoint_management_access_rule" "rule3" {
#   layer = "${checkpoint_management_package.CPX_Demo.name} Network"
#   position = {below = checkpoint_management_access_rule.rule2.id}
#   name = "Rule 3"
#   source = [checkpoint_management_host.host3.name]
#   enabled = true
#   destination = [checkpoint_management_network.network3.name]
#   destination_negate = false
#   service = [checkpoint_management_service_tcp.service3.name, checkpoint_management_service_udp.service3.name]
#   service_negate = false
#   action = "Accept"
#   action_settings = {
#     enable_identity_captive_portal = false
#   }
#   track = {
#     accounting = true
# 	alert = "none"
#     enable_firewall_session = true
#     per_connection = true
#     per_session = true
#     type = "Log"
#   }
# }

# resource "checkpoint_management_access_rule" "rule4" {
#   layer = "${checkpoint_management_package.CPX_Demo.name} Network"
#   position = {below = checkpoint_management_access_rule.rule3.id}
#   name = "Rule 4"
#   source = [checkpoint_management_host.host4.name]
#   enabled = true
#   destination = [checkpoint_management_network.network4.name]
#   destination_negate = false
#   service = [checkpoint_management_service_tcp.service4.name, checkpoint_management_service_udp.service4.name]
#   service_negate = false
#   action = "Accept"
#   action_settings = {
#     enable_identity_captive_portal = false
#   }
#   track = {
#     accounting = true
# 	alert = "none"
#     enable_firewall_session = true
#     per_connection = true
#     per_session = true
#     type = "Log"
#   }
# }

# resource "checkpoint_management_access_rule" "rule5" {
#   layer = "${checkpoint_management_package.CPX_Demo.name} Network"
#   position = {below = checkpoint_management_access_rule.rule4.id}
#   name = "Rule 5"
#   source = [checkpoint_management_host.host5.name]
#   enabled = true
#   destination = [checkpoint_management_network.network5.name]
#   destination_negate = false
#   service = [checkpoint_management_service_tcp.service5.name, checkpoint_management_service_udp.service5.name]
#   service_negate = false
#   action = "Accept"
#   action_settings = {
#     enable_identity_captive_portal = false
#   }
#   track = {
#     accounting = true
# 	alert = "none"
#     enable_firewall_session = true
#     per_connection = true
#     per_session = true
#     type = "Log"
#   }
# }

# resource "checkpoint_management_access_rule" "rule6" {
#   layer = "${checkpoint_management_package.CPX_Demo.name} Network"
#   position = {below = checkpoint_management_access_rule.rule5.id}
#   name = "Rule 6"
#   source = [checkpoint_management_host.host5.name, checkpoint_management_host.host4.name, checkpoint_management_host.host3.name, checkpoint_management_host.host2.name, checkpoint_management_host.host1.name ]
#   enabled = true
#   destination = [checkpoint_management_network.network5.name, checkpoint_management_network.network4.name, checkpoint_management_network.network3.name, checkpoint_management_network.network2.name, checkpoint_management_network.network1.name]
#   destination_negate = false
#   service = [checkpoint_management_service_tcp.service5.name, checkpoint_management_service_tcp.service4.name, checkpoint_management_service_tcp.service3.name, checkpoint_management_service_tcp.service2.name, checkpoint_management_service_tcp.service1.name, checkpoint_management_service_udp.service5.name, checkpoint_management_service_udp.service4.name, checkpoint_management_service_udp.service3.name, checkpoint_management_service_udp.service2.name, checkpoint_management_service_udp.service1.name]
#   service_negate = false
#   action = "Accept"
#   action_settings = {
#     enable_identity_captive_portal = false
#   }
#   track = {
#     accounting = true
# 	alert = "none"
#     enable_firewall_session = true
#     per_connection = true
#     per_session = true
#     type = "Log"
#   }
# }
