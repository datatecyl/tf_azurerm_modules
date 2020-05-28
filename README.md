# [DRAFT] How to use nested modules with AzureRM provider

The provided terraform configurations provision a subset of resources with nested modules to two different azure_rm terraform providers. For example, each provider might point to a different Azure Subscription.

The repository contains two samples:

1. `src/with_default_provider` - one of defined providers does not have an alias;
2. `src/no_default_provider` - all defined providers has an alias.

(???) If no default provider is defined, even if all the components within Terraform configuration has explicitly assigned provider, terraform plan/apply might respond with `Error: "features": required field is not set`. If there is a default provider in a configuration - no errors. Thus, the second example `src/no_default_provider` _sometimes_  fails. In case of failure, clean up working dir and re-initialize terraform
