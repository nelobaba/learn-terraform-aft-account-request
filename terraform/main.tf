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

module "sandbox_aft" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "manoutechconsulting+5@gmail.com"
    AccountName               = "sandbox-aft"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "manoutechconsulting+5@gmail.com"
    SSOUserFirstName          = "Manoutech"
    SSOUserLastName           = "IT Firm"
  }

  account_tags = {
    "Environment" = "sandbox"
  }

  change_management_parameters = {
    change_requested_by = "nelobaba"
    change_reason       = "Provision sandbox-aft account via AFT (retry after Sandbox OU registered in Control Tower)"
  }

  custom_fields = {}

  account_customizations_name = ""
}
