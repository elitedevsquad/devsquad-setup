# Project Name

### Platform Requirements

_Please, enter the current project requirements and keep it updated if something changes._

```text
PHP Version:
DB Version:
Composer Version:
Node Version:
NPM Version:
```

_Remember to use **redis** for the CACHE_DRIVER, QUEUE_CONNECTION, SESSION_DRIVER settings._

### Third-party Dependencies

_Packages that were installed and need some attention during the environment setup and coding time. Eg:_

* Laravel Cashier
* Laravel Horizon
* Stripe
* Etc...

### Environment Setup

_Please, enter all the necessary steps to setup the project and start to development._

> _If you are using Laravel Sail you might need to tweak the commands below to fit your environment._

#### 1. Clone the repository

```shell
git clone git@github.com:elitedevsquad/example.git
```

#### 2. Install the PHP dependencies

```shell
composer install
```

#### 3. Copy the .env file

```shell
cp .env.example .env
```

_After copying the .env file, you'll need to change the .env to reflect your environment settings/credentials_

#### 4. Generate the APP_KEY

```shell
php artisan key:generate
```

#### 5. Run the migrations and seed the database

```shell
php artisan migrate --seed
```

#### 6. Install the JavaScript dependencies

```shell
npm install
npm run watch
```

#### 7. Run the DevSquad Setup command

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/elitedevsquad/devsquad-setup/master/run)"
```

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

### Running Tests

```shell
php artisan test
```

##### Parallel tests

```shell
php artisan test --parallel
```

### Other Commands

_This is the place to put other commands needed in this project._

### Other Settings

_This is the place to put other settings needed in this project._

### Branches Standard

_Please, pay attention to the Jira task before creating a new branch, you should find which of these prefixes fits
better with the Jira task and after the prefix put the Jira task ID._

1. Feature ![](https://team-devsquad.atlassian.net/secure/viewavatar?avatarId=10315&avatarType=issuetype)

```shell
git checkout -b feature/JIRA-123
```

2. Enhancement ![](https://team-devsquad.atlassian.net/secure/viewavatar?avatarId=10318&avatarType=issuetype)

```shell
git checkout -b enhancement/JIRA-123
```

3. Hotfix ![](https://team-devsquad.atlassian.net/secure/viewavatar?avatarId=10303&avatarType=issuetype) _(Bugs found in
   the production environment that needs to be fixed ASAP)_

```shell
git checkout -b hotfix/JIRA-123
```

4. Bugfix ![](https://team-devsquad.atlassian.net/secure/viewavatar?avatarId=10308&avatarType=issuetype) _(Bugs that
   could be fixed after in the current release or in the next, you'll use it, if the source branch was already merged or
   if the fix could isn't super urgent)_

```shell
git checkout -b bugfix/JIRA-123
```

5. Task _(You should use it for tasks like Laravel upgrade)_

```shell
git checkout -b task/JIRA-123
```

6. Release _(You should use it to merge the approved branches)_

```shell
git checkout -b release/0.1.0
```
