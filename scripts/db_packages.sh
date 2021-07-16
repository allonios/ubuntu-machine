#!/usr/bin/env bash

# mariadb server
###############################################################################################################################################
sudo apt install mariadb-server -y
# sudo mariadb < mysql_setup.sql
################################################################################################################################################

# sqlite
################################################################################################################################################
sudp apt install sqlite3 libsqlite3-dev default-libmysqlclient-dev sqlitebrowser libsqlite3-dev
################################################################################################################################################

# postgresql:
################################################################################################################################################
# Create the file repository configuration:
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'

# Import the repository signing key:
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

# Update the package lists:
sudo apt-get update

# Install the latest version of PostgreSQL.
# If you want a specific version, use 'postgresql-12' or similar instead of 'postgresql':
sudo apt-get -y install postgresql
###############################################################################################################################################

# mongodb
###############################################################################################################################################
wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
sudo apt-get install gnupg -y
wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list
sudo apt-get update
sudo apt-get install -y mongodb-org
###############################################################################################################################################
