resource "oci_core_instance" "ubuntu_instance" {
    # Required
    availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name
    compartment_id = "ocid1.tenancy.oc1..aaaaaaaay3gpq46ubw5k6mctntjbtrkem77svp53lxwuegww6rxpxl6i4kpa"
    shape = "VM.Standard.E2.1.Micro"
    source_details {
        source_id = "ocid1.image.oc1.iad.aaaaaaaatwjeakck3drug6mmutcz3msodjse56qxdtwnvehldu7yds66r2wq"
        source_type = "image"
    }

    # Optional
    display_name = "ubuntu-instance-1"
    create_vnic_details {
        assign_public_ip = true
        subnet_id = "ocid1.compartment.oc1..aaaaaaaav3wvbbhowolbfnahji3go2uymdimkreioz2wrauozr7mjigrgutq"
    }
    metadata = {
        ssh_authorized_keys = file("/mnt/c/Praveen/DEVOPS_DOCUMETS/terraform/Practice/tf-compute/id_rsa.pub")
    } 
    preserve_boot_volume = false
}
