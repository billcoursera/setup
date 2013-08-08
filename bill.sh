#!/bin/bash

# git config
git clone git@github.com:billcoursera/bitstarter.git
git config --global user.name "billcoursera"
git config --global user.email "billko+coursera@gmail.com"

# bitstarter git setup
git checkout develop
git push -u origin develop
git checkout staging
git push -u origin staging
git checkout develop

# heroku setup
heroku login
heroku keys:add
git remote add staging-heroku git@heroku.com:billcoursera-bitstarter-s-mooc.git
git remote add production-heroku git@heroku.com:billcoursera-bitstarter-mooc.git
