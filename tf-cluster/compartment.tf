resource "oci_identity_compartment" "tf-compartment" {
    # Required
    compartment_id = "ocid1.tenancy.oc1..aaaaaaaay3gpq46ubw5k6mctntjbtrkem77svp53lxwuegww6rxpxl6i4kpa"
    description = "Compartment for Terraform resources."
    name = "testing_zone"
}
