# Make 2.0

## Installation

Run the command below and everything will be done automagically:

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/elitedevsquad/devsquad-setup/master/run)"
```

_If you are using a linux based environment:_

```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/elitedevsquad/devsquad-setup/master/run)"
```

## ATTENTION!

After running the command, please add these scripts in your composer.json file:

```json
{
    "scripts": {
        "fix": [
            "./vendor/bin/pint"
        ],
        "verify": [
            "./vendor/bin/pint --test",
            "./vendor/bin/phpcs --standard=phpcs.xml",
            "./vendor/bin/phpmd app text ./phpmd.xml",
            "./vendor/bin/phpunit"
        ]
    }
}
```

Also, add this variable to the .env.example file and to your .env file:
```env
SAIL_ENABLED=false
```

### If this is a Bitbucket repository

The `bitbucket-pipelines.yml` file will be added to the root directory of your project, this file contains the
configuration to test the project on every pull request, also it has a configuration to push the code of the
branches `master`, `develop`, and `release` to the customer's repository on every push to those branches.

The configuration to push the code to the customer's repository is already done in bitbucket-pipelines.yml file, but to enable the this feature you must add these variables in `Bitbucket->Repository Settings->Repository Variables`:
`DELIVERY` use with `true` of `false` values to enable/disable continuous delivery.
`CUSTOMER_REPOSITORY_MANAGER` with `bitbucket` or `github`.
`CUSTOMER_ORGANIZATION` with the customer's organization name.
`CUSTOMER_REPOSITORY` with the customer's repository name.

**ATTENTION: The instructions below should be followed only once you have the necessary information to uncomment the lines and replace the keys.**

### If this project uses Vapor

_The instructions below should be executed **only one time by the repository's admin**._

#### Create a new Slack Incoming Webhook

Use this link https://teamdevsquad.slack.com/apps/A0F7XDUAZ-incoming-webhooks?tab=more_info to create a new incoming
webhook, and copy the Webhook URL that was generated, as it will be used later.

#### Create a new Vapor API Token

Access the Vapor's account for this project and get an API Token. You can access this
link https://vapor.laravel.com/app/account/general and click on the API tab, so you can create a new one. Please, copy
it!

#### Create GitHub Secrets

Please, create this GitHub Secrets:

- VAPOR_API_TOKEN
- SLACK_WEBHOOK

_Without these secrets the deployment actions and notifications **won't work properly**!_
