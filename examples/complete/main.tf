module "aci_vspan_destination_group" {
  source  = "netascode/vspan-destination-group/aci"
  version = ">= 0.0.1"

  name        = "DST_GRP"
  description = "My VSPAN Destination Group"
  destinations = [
    {
      name        = "DST1"
      description = "Destination 1"
      ip          = "1.2.3.4"
      dscp        = "CS4"
      flow_id     = 10
      mtu         = 9000
      ttl         = 10
    },
    {
      name                = "DST2"
      description         = "Destination 2"
      tenant              = "Tenant-1"
      application_profile = "AP1"
      endpoint_group      = "EPG1"
      client_endpoint     = "01:23:45:67:89:AB"
    }
  ]
}
