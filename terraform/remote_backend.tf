terraform {
    backend "remote" {
        organization = "smadhiraju-org"

        workspaces {
            name = "hashicupsConsulDemo"
        }
    }
}
