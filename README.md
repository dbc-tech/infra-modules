# Azure infrastructure as code (IaC) Terraform module templates

Infrastructure as code using Terraform module strategy

# Introduction

This repository contains a collection of Terraform modules that can be used to deploy infrastructure on Azure. The modules are designed to be used with Terraform 0.12 and above.


## Naming conventions

The naming convention for resources is as follows:
> abbrv-env-purpose-number

Where:
* abbrv - is the abbreviation of the resource type
* env - is the environment (dev, test, prod)
* purpose - is the app the resource is used for (shared, oto, url-shortner, etc)
* number - is a unique number for the resource

## Key Variables

To cater for above naming conventions you will find in the modules the following variables have been used
* abbreviation - the abbreviation id defined in the naming convention for each module depending on the resource
* environment - An ```environment``` variable has been added that is used to name the resource also inside tags
* purpose - A ```domain``` variable has been added that represents the purpose of the resource. This has also been used for tags
* number - An ```instance_version``` variable has been used to represent the version of the instance.

## Using terraform modules

It is vitally important to understand how to use terraform modules.
[Terrafom Modules](https://developer.hashicorp.com/terraform/language/modules/develop)

Terraform modules are self-contained packages of Terraform configurations that are managed as a group. Modules are used to create reusable components, improve organization, and to treat pieces of infrastructure as a black box.
To use the modules in this repository, you can use the source parameter with a Git URL and add other properties that are required.

Following is a keyvault example
```hcl
module "keyvault" {
  source = "git::github.com/dbc-tech/infra-modules//keyvault?ref=master"
  resource_group_name = module.resource-group.resource_group_name
  domain = var.domain
  environment = var.environment
  resource_group_id = module.resource-group.resource_group_id
  client_config_tenant_id = data.azurerm_client_config.config.tenant_id
}
```

## Module and Variable Naming
Module have been named in kebab case format while the variables follow a snake case format.

## Developing using modules locally

There are two ways to go about developing IAC using modules locally.
 * Using github repository as reference and passing the variables required for each module
 * Use terraform init and terraform plan which will create a module directory under .terraform, which can be referred.

## Module Referencing
Terraform provides a way to reference specific modules. It does not really matter if the module is referenced or not.
Terraform will always clone the git repo for each invocation of source. To specifically reference a module use '//' at the end of the git repo url.
```hcl
module "keyvault" {
  source = "git::github.com/dbc-tech/infra-modules//<MODULE-NAME>?ref=master"
}
```

## Module versioning

A github tag will be used to version the modules.

Tag structure will follow [semantic versioning](https://semver.org/)
 > MAJOR.MINOR.PATCH

* MAJOR version when you make incompatible module changes
* MINOR version when you add functionality in a backwards compatible manner
* PATCH version when you make backwards compatible bug fixes

To reference the tag in the module source, use the following format
```hcl
module "keyvault" {
  source = "git::github.com/dbc-tech/infra-modules//keyvault?ref=<TAG-VERSION>"
}