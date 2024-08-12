variable "resource_group_name" {
  type        = string
  description = "The name of the Resource Group where the Windows Web App should exist. Changing this forces a new Windows Web App to be created."
}

variable "resource_group_location" {
  type        = string
  description = "The Location of the Resource Group"
}

variable "service_plan_name" {
  type        = string
  description = "The name which should be used for this Service Plan. Changing this forces a new Service Plan to be created"
}

variable "sku_name" {
  type        = string
  description = "The SKU for the plan. Possible values include B1, B2, B3, D1, F1, I1, I2, I3, I1v2, I2v2, I3v2, I4v2, I5v2, I6v2, P1v2, P2v2, P3v2, P0v3, P1v3, P2v3, P3v3, P1mv3, P2mv3, P3mv3, P4mv3, P5mv3, S1, S2, S3, SHARED, EP1, EP2, EP3, FC1, WS1, WS2, WS3, and Y1."
}

variable "os_type" {
  type        = string
  description = "The O/S type for the App Services to be hosted in this plan. Possible values include Windows, Linux, and WindowsContainer. Changing this forces a new resource to be created."
}

variable "web_app_name" {
  type        = string
  description = "The name which should be used for this Windows Web App. Changing this forces a new Windows Web App to be created."
}

variable "current_stack" {
  type        = string
  description = " The Application Stack for the Windows Web App. Possible values include dotnet, dotnetcore, node, python, php, and java."
}

variable "dotnet_version" {
  type        = string
  description = "The version of .NET to use when current_stack is set to dotnet. Possible values include v2.0,v3.0, v4.0, v5.0, v6.0, v7.0 and v8.0."
}

variable "client_id" {
  type        = string
  description = ""
}

variable "client_secret" {
  type        = string
  description = ""
}

variable "tenant_id" {
  type        = string
  description = ""
}

variable "subscription_id" {
  type        = string
  description = ""
}