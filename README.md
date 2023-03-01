# Liquibase Rollback One Update Sql Action
Official GitHub Action to run Liquibase Rollback One Update Sql in your GitHub Action Workflow. For more information on how rollback one update sql works visit the [Official Liquibase Documentation](https://docs.liquibase.com/commands/home.html).
## Rollback One Update Sql
[PRO]
Rollback one update from the database
## Usage
```yaml
steps:
- uses: actions/checkout@v3
- uses: liquibase-github-actions/rollback-one-update-sql@v4.19.1
  with:
    # The root changelog
    # string
    # Required
    changelogFile: ""

    # The JDBC target database connection URL
    # string
    # Required
    url: ""

    # The default catalog name to use for the database connection
    # string
    # Optional
    defaultCatalogName: ""

    # The default schema name to use for the database connection
    # string
    # Optional
    defaultSchemaName: ""

    # The deployment ID of the update to rollback
    # string
    # Optional
    deploymentId: ""

    # The JDBC driver class
    # string
    # Optional
    driver: ""

    # The JDBC driver properties file
    # string
    # Optional
    driverPropertiesFile: ""

    # Flag which indicates you intend to use this feature
    # bool
    # Optional
    force: ""

    # Control whether names of objects in the default catalog are fully qualified or not. If true they are. If false, only objects outside the default catalog are fully qualified
    # bool
    # Optional
    outputDefaultCatalog: ""

    # Control whether names of objects in the default schema are fully qualified or not. If true they are. If false, only objects outside the default schema are fully qualified
    # bool
    # Optional
    outputDefaultSchema: ""

    # The target database password
    # string
    # Optional
    password: ""

    # The path to the script to use to perform the rollback
    # string
    # Optional
    rollbackScript: ""

    # The target database username
    # string
    # Optional
    username: ""

```

### Secrets
It is a good practice to protect your database credentials with [GitHub Secrets](https://docs.github.com/en/actions/security-guides/encrypted-secrets)

## Optional Liquibase Global Inputs
The liquibase rollback one update sql action accepts all valid liquibase global options as optional parameters. A full list is available in the official [Liquibase Documentation](https://docs.liquibase.com/parameters/command-parameters.html).

### Example
```yaml
steps:
  - uses: actions/checkout@v3
  - uses: liquibase-github-actions/rollback-one-update-sql@v4.19.1
    with:
      changelogFile: ""
      url: ""
      headless: true
      licenseKey: ${{ secrets.LIQUIBASE_LICENSE_KEY }}
      logLevel: INFO
```

## Feedback and Issues
This action is automatically generated. Please submit all feedback and issues with the [generator repository](https://github.com/liquibase/github-action-generator/issues).
