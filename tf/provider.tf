provider "google" {
    credentials = file("account.json")
    project = "root-project-273219"
    region  = "us-central1"
    zone    = "us-central-c"
}

terraform {
    backend "remote" {
        organization = "cdunkin"

        workspaces {
            name = "gcp_training"
        }
    }
}