terragrunt = {
  dependencies {
    paths = [
      "../resource_group"
    ]
  }

  terraform {
    source = "git::git@github.com:teamdigitale/io-infrastructure-modules.git//azurerm_key_vault"
  }

  # Include all settings from the root terraform.tfvars file
  include = {
    path = "${find_in_parent_folders()}"
  }
}

# Azure DNS zone module variables

# AD ID
azurerm_key_vault_tenant_id = "cb44f084-ca44-4753-8973-dd3045d9ad2b"

policy_object_list_map      = [
  # Federico Feroldi
  {
    object_id               = "b9c42346-12d2-4ed2-bdcf-9f6f8bb486ee",
    key_permissions         = "create,delete,update,get,list",
    secret_permissions      = "set,delete,get,list",
    certificate_permissions = "create,delete,update,get,list"
  },
  # Federico Feroldi - application
  {
    object_id               = "6aed823c-9323-4fa0-8e3f-f248a0592e96",
    key_permissions         = "create,delete,update,get,list",
    secret_permissions      = "set,delete,get,list",
    certificate_permissions = "create,delete,update,get,list"
  },
  # Luca Prete
  {
    object_id               = "4c94370d-6dfe-4dd8-ac5e-c81d23575ea8",
    key_permissions         = "create,delete,update,get,list",
    secret_permissions      = "set,delete,get,list",
    certificate_permissions = "create,delete,update,get,list"
  },
  # Luca Prete - application
  {
    object_id               = "356e6dee-bc7f-48db-9b8f-c19755a627e1",
    key_permissions         = "create,delete,update,get,list",
    secret_permissions      = "set,delete,get,list",
    certificate_permissions = "create,delete,update,get,list"
  },
  # Andrea Ceresoni
  {
    object_id               = "99b0ed3d-861d-4a5c-979e-fd0c6144d072",
    key_permissions         = "create,delete,update,get,list",
    secret_permissions      = "set,delete,get,list",
    certificate_permissions = "create,delete,update,get,list"
  },
  # Danilo Spinelli - AGID
  {
    object_id               = "8e50661e-ade5-4315-9801-39480fe4d19a",
    key_permissions         = "create,delete,update,get,list",
    secret_permissions      = "set,delete,get,list",
    certificate_permissions = "create,delete,update,get,list"
  },
  # Luca Pinna - BeeToBit
  {
    object_id               = "1a844c85-5f7a-4fb6-988a-054d5e6ddfdc",
    key_permissions         = "create,delete,update,get,list",
    secret_permissions      = "set,delete,get,list",
    certificate_permissions = "create,delete,update,get,list"
  },
  # Luca Pinna - BeeToBit - application
  {
    object_id               = "cae25356-55d6-4ae5-8dd6-da758307ed15",
    key_permissions         = "create,delete,update,get,list",
    secret_permissions      = "set,delete,get,list",
    certificate_permissions = "create,delete,update,get,list"
  },
  # Roberto Chessa - BeeToBit
  {
    object_id               = "3b3ba5ac-76f9-4177-8aa3-8215a020d17a",
    key_permissions         = "create,delete,update,get,list",
    secret_permissions      = "set,delete,get,list",
    certificate_permissions = "create,delete,update,get,list"
  },
  # Roberto Chessa - BeeToBit - application
  {
    object_id               = "879219f3-5509-4664-91d0-4a0f2588d479",
    key_permissions         = "create,delete,update,get,list",
    secret_permissions      = "set,delete,get,list",
    certificate_permissions = "create,delete,update,get,list"
  }
]
