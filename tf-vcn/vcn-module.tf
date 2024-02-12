
# Source from https://registry.terraform.io/modules/oracle-terraform-modules/vcn/oci/
module "vcn"{
  source  = "oracle-terraform-modules/vcn/oci"
  version = "3.1.0"
  # insert the 5 required variables here

  # Required Inputs
  compartment_id = "ocid1.compartment.oc1..aaaaaaaa2j6c6t2z5h5i63cvmohjvhqihnukzvor7spitxr24ign6fkxn4bq"
  region = "us-ashburn-1"

  internet_gateway_route_rules = null
  local_peering_gateways = null
  nat_gateway_route_rules = null

  # Optional Inputs
  vcn_name = "vcn-module"
  vcn_dns_label = "vcnmodule"
  vcn_cidrs = ["10.0.0.0/16"]
  
  create_internet_gateway = true
}
