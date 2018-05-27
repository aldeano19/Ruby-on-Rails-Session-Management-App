
# Session management app

### Overview
This is a simple session management application to exercise the Ruby on Rails features.
The app will create users and log them in to a dummy profile page. Username and password 
validations are in place.

### Technologies in use
* Ruby on Rails
* MySQL
* The usual suspects (Javascript, HTML, CSS)

### Rails framework features exercised
* Generate app, models, databases, migrations with the rails cli
* Practice with the `$ rails console` 
* Creates a user from client input
* Validate user with Active Record validation
* Validate password with BCrypt `has_secure_password`
* Save new user record to database
* Use rails session to store values across different route calls
* Access global and class variables from .erb files
* Render views explicitly (call `render` method)
* Render views implicitly (name view to match the model)
* Access existing records on database
* Ruby gem dependency management
    
# Notes
* The MySQL database needs to be installed and mysql server running. Username: root, no password
* After db is accessible through terminal run: `$ rails db:create` . This will create the database 
    dependencies for the rails app. Ex: The expected default database