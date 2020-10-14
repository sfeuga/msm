# README

## Prerequisite

* Ruby 2.7.2 (I use [RVM](https://rvm.io) to install Ruby)
* [PostgreSQL 12](https://www.postgresql.org)
* [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli#download-and-install) (only for Heroku deployment)

> Developed & Tested on [Fedora 32](https://getfedora.org/en/workstation/download/).

```bash
sudo dnf install https://download.postgresql.org/pub/repos/yum/reporpms/F-32-x86_64/pgdg-fedora-repo-latest.noarch.rpm
sudo dnf install postgresql12-server postgresql12
sudo /usr/pgsql-12/bin/postgresql-12-setup initdb
sudo systemctl enable --now postgresql-12
sudo firewall-cmd --add-service=postgresql --permanent
sudo su - postgres
createuser -d -s YOUR_ACCOUNT_USERNAME
exit
echo 'export PATH="/usr/pgsql-12/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
```

__Optional__

Run `curl https://cli-assets.heroku.com/install.sh | sh` to install Heroku CLI.

## Setup Database & yarn

```bash
rake db:create
rake db:migrate
yarn
yarn upgrade
```

And run `webpack-dev-server` to test Yarn compilation (hit _CTRL-C_ to stop the server)
