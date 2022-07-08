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

After running the command, please add these scripts in your composer.json file:

```json
{
  "scripts": {
    "fix": [
      "./vendor/bin/php-cs-fixer fix --using-cache=no --verbose"
    ],
    "verify": [
      "./vendor/bin/php-cs-fixer fix --dry-run --using-cache=no --verbose --stop-on-violation",
      "./vendor/bin/phpcs --standard=phpcs.xml",
      "./vendor/bin/phpmd app text ./phpmd.xml",
      "./vendor/bin/phpunit"
    ]
  }
}
```



### If this project uses Vapor

_The instructions below should be executed **only one time by the repository's admin**._

#### Create a new Slack Incoming Webhook

Use this link https://teamdevsquad.slack.com/apps/A0F7XDUAZ-incoming-webhooks?tab=more_info to create a new incoming
webhook, and copy the Webhook URL that was generated, as it will be used later.

#### Create a new Vapor API Token

Access the Vapor's account for this project and get an API Token. You can access this
link https://vapor.laravel.com/app/account/general and click on the API tab, so you can create a new one. Please, copy it!

#### Create GitHub Secrets

Please, create this GitHub Secrets:

- VAPOR_API_TOKEN
- SLACK_WEBHOOK

_Without these secrets the deployment actions and notifications **won't work properly**!_
