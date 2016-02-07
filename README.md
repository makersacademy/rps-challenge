# RPS Challenge

[![Build Status](https://travis-ci.org/seanhawkridge/rps-challenge.svg?branch=master)](https://travis-ci.org/seanhawkridge/rps-challenge)
[![Coverage Status](https://coveralls.io/repos/github/seanhawkridge/rps-challenge/badge.svg?branch=master)](https://coveralls.io/github/seanhawkridge/rps-challenge?branch=master)


My Approach
------------

I began by setting up a new Sinatra environment. I then test-built the app one route at a time, starting with a sign-in page and working my way to a set of result pages for wins, losses and draws.

The app uses classes for a Player and a Computer which are injected into a Game class, which is then used throughout the Controller.

I aimed to unit-test each method in my Model, and feature-test the app using Capybara.

I wrote some simple styles for the site, and used Foundation for some quick structure.

Finally, I deployed the app to Heroku.


Installing the app:
-------------------

* Fork this repo
* Clone to your local environment
* run `bundle install`
* run `rackup` or equivalent


On Heroku
----------

https://seanhawkridge-rps.herokuapp.com


Playing the game
-----------------

Start by adding your name:

![Screenshot](docs/Screen-Shot-2016-02-06-at-18.56.19.jpg?dl=0)

Choose your move:

![Screenshot](docs/Screen-Shot-2016-02-06-at-18.56.26.jpg?dl=0)

See your result:

![Screenshot](docs/Screen-Shot-2016-02-06-at-18.56.30.jpg?dl=0)


To Do
-----

* Replace the evil global variable
* Add a two player option
