policy "gcp-cis-5.1-storage-deny-anonymous-or-public-bucket-access" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-foundational-policies-library/master/cis/gcp/storage/gcp-cis-5.1-storage-deny-anonymous-or-public-bucket-access/gcp-cis-5.1-storage-deny-anonymous-or-public-bucket-access.sentinel"
  enforcement_level = "advisory"
}
policy "cost" {
  enforcement_level = "soft-mandatory"
}
policy "bucketversioning" {
    source = "./bucketversioning.sentinel"
    enforcement_level = "advisory"
}

policy "ensure-logging-is-enabled-on-storage-bucket" {
    source = "./bucketlogging.sentinel"
    enforcement_level = "advisory"
}
