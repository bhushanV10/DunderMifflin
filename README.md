# DunderMifflin

Database setup:

1. Create user in postgres with the following command:

        create user <username> with encrypted password <password>;

2. Update the username and password in database.yml

3. Give permissions to the created user :

        ALTER USER <username> CREATEDB;

4. Go to project folder in terminal and run the following commands -

        rake db:setup
