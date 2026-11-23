# parker-site-tf

Terraform configuration for the Route 53 hosted zone serving [parkerparkerparker.com](https://parkerparkerparker.com).

The configuration imports the existing registrar-created hosted zone and manages its apex A record for Vercel. The zone has destruction protection. Other records, including mail records and the unrelated `awscost` record, remain unmanaged.

## Local setup

Requires Terraform 1.5 or newer and AWS credentials supplied through the standard AWS credential chain. No credentials are stored in this repository.

```sh
terraform init
terraform fmt -check
terraform validate
terraform plan
```

Review the plan before running `terraform apply`. The hosted zone import is specific to this domain and AWS account; adapt it before using the configuration elsewhere.

State, plan files, variable files, and the `.terraform` directory are ignored and must remain local or in a private remote backend. The provider lock file is committed for reproducible installations.
