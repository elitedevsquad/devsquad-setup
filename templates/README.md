# Project Name

### Platform Requirements
_Please, enter the current project requirements and keep it updated if something changes._

```
PHP Version:
DB Version:
Composer Version:
Node Version:
NPM Version:
```

### Third-party Dependencies
_Packages that were installed and need some attention during the environment setup and coding time. Eg:_

* Laravel Cashier
* Laravel Horizon
* Etc...

### Environment Setup
_Please, enter all the necessary steps to setup the project and start to development._

> _If you are using Laravel Sail you might need to tweak the commands below to fit your environment._

#### 1. Clone the repository
```
git clone git@github.com:elitedevsquad/example.git
```

#### 2. Install the PHP dependencies
```
composer install
```

#### 3. Copy the .env file
```
cp .env.example .env
```
_After copying the .env file, you'll need to change the .env to reflect your environment settings/credentials_

#### 4. Generate the APP_KEY
```
php artisan key:generate
```

#### 5. Run the migrations and seed the database
```
php artisan migrate --seed
```

#### 6. Install the JavaScript dependencies
```
npm install
npm run watch
```

### Running Tests
```
php artisan test
```
##### Parallel tests
```
php artisan test --parallel
```

### Other Commands
_This is the place to put other commands needed in this project._

### Other Settings
_This is the place to put other settings needed in this project._

### Branches Standard
_Please, pay attention to the Jira task before creating a new branch, you should find which of these prefixes fits better with the Jira task and after the prefix put the Jira task ID._

1. Feature ![](https://team-devsquad.atlassian.net/secure/viewavatar?avatarId=10315&avatarType=issuetype)
```
git checkout -b feature/JIRA-123
```

2. Enhancement ![](https://team-devsquad.atlassian.net/secure/viewavatar?avatarId=10318&avatarType=issuetype)
```
git checkout -b enhancement/JIRA-123
```

3. Hotfix ![](https://team-devsquad.atlassian.net/secure/viewavatar?avatarId=10303&avatarType=issuetype) _(Bugs found in the production environment that needs to be fixed ASAP)_
```
git checkout -b hotfix/JIRA-123
```

4. Bugfix ![](https://team-devsquad.atlassian.net/secure/viewavatar?avatarId=10308&avatarType=issuetype) _(Bugs that could be fixed after the same release or on the next release, you will use it, if the source branch was already merged or if the fix could isn't super urgent)_
```
git checkout -b bugfix/JIRA-123
```

5. Release _(You should use it to merge the approved branches)_
```
git checkout -b release/0.1.0
```
