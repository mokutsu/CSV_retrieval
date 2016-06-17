== README

#CSV Retrieval App
This web application was created as a take-home assignment for an interview. The core functions are to upload a CSV file to the database, and retrieve data in JSON format, based on a request for a range of dates. Although the assignment requested an API, a full application with a view layer has been created in order to assist in demonstrating the functionality upon deployment to heroku. 

The successfulness of this app as an API-only product can be tested using a tool such as 'Postman' to send an AJAX request, with a 'GET' request to the 'index' action of the Stats controller. This 'get' request will require a ':start_id' and ':end_id' field. 


# Dependencies, Config, Database
This web app uses the Ruby on Rails MVC Framework (Rails 4.0, Ruby 2.3.0), and runs on the Puma Webserver. The development/test databases are SQLIte3 and the production database is Postgres. Run rake db:migrate to set up database, and rails s to serve up a local version. See gemfile for all dependencies. 

# Deployment instructions
This web application has been deployed to https://obscure-depths-90672.herokuapp.com. The requested CSV file (chart.csv) has already been uploaded in the production environment and should not be uploaded again. 
