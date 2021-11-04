# Make 2.0

## If this project uses Vapor

### Create a new Slack Incoming Webhook

Use this link https://teamdevsquad.slack.com/apps/A0F7XDUAZ-incoming-webhooks?tab=more_info to create a new incoming
webhook, and copy the Webhook URL that was generated, as it will be used later.

### Create a new Vapor API Token

Access the Vapor's account for this project and get an API Token. You can access this
link https://vapor.laravel.com/app/account/general and click on the API tab, so you can create a new one. Please, copy it!

### Create GitHub Secrets

Please, create this GitHub Secrets:

- VAPOR_API_TOKEN
- SLACK_WEBHOOK

_Without these secrets the deployment actions and notifications **won't work properly**!_
