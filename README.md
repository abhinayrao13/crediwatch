# Overview
The system enables users to post stock recomendations and users can post comments to them.

# Pre-requirements

* git

* rvm

* ruby-2.7.0

# Installation guide

* Clone crediwatch project: git clone https://github.com/abhinayrao13/crediwatch

* Clone crediwatch_auth project and make sure both the projects are in same folder: git clone https://github.com/abhinayrao13/crediwatch_auth

* Go to crediwatch project directory: cd crediwatch

* Install bundler and install gem dependencies: gem install bundler && bundle

* Run migrations: rails db:migrate

* Start rails server: rails s
