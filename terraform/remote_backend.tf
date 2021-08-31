terraform {
    backend "remote" {
        organization = "hashicorp-rryjewski"

        workspaces {
            name = "hashicupsConsulDemo"
        }
    }
}
