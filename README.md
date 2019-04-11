# ARCHIVED and no longer maintained

# JsonAPI RobotWars
[![Code Climate](https://codeclimate.com/github/jakubrohleder/jsonapi-robot-wars/badges/gpa.svg)](https://codeclimate.com/github/jakubrohleder/jsonapi-robot-wars)

Repository for sample [cerebris/jsonapi-resources](https://github.com/cerebris/jsonapi-resources) Ruby on Rails app used for [jakubrohleder/angular-jsonapi](https://github.com/jakubrohleder/angular-jsonapi) demo.

**This is only an API server to view the actual [angular-jsonapi](https://github.com/jakubrohleder/angular-jsonapi) run demo from that repository as well!**

You can run it localy with:

### Local

* Clone this module and install gem dependencies:

~~~bash
git clone git@github.com:jakubrohleder/jsonapi-robot-wars.git
cd jsonapi-robot-wars
bundle install
~~~

* Configure database in `config/database.yml`

* Prepare database

~~~bash
# from jsonapi-robot-wars root directory
  bin/rake db:create db:migrate db:seed
~~~

* Run server

~~~bash
# from jsonapi-robot-wars root directory
  rails s
~~~

