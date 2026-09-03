module "sandbox_dev" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "manoutechconsulting+4@gmail.com"
    AccountName               = "sandbox-dev"
    ManagedOrganizationalUnit = "Management"
    SSOUserEmail              = "manoutechconsulting+4@gmail.com"
    SSOUserFirstName          = "Manou"
    SSOUserLastName           = "Tech"
  }

  account_tags = {
    "Environment" = "dev"
  }

  change_management_parameters = {
    change_requested_by = "nelobaba"
    change_reason       = "Provision sandbox-dev account via AFT"
  }

  custom_fields = {}

  account_customizations_name = ""
}
