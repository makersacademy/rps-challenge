# RPS Challenge

My Approach
------------

I began by setting up a new Sinatra environment. I then test-built the app one route at a time, starting with a sign-in page and working my way to a set of result pages for wins, loses and draws.

The app uses classes for a Player and a Computer which are injected into a Game class which is used throughout the Controller.

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

![alt tag](https://www.dropbox.com/s/ziwdn8z1h60c7t1/Screen-Shot-2016-02-06-at-18.56.19.jpg?dl=0)

![alt tag](https://www.dropbox.com/s/g11qqetl5cdsyr4/Screen-Shot-2016-02-06-at-18.56.26.jpg?dl=0)

![alt tag](https://www.dropbox.com/s/ew8c509ornq8t3k/Screen-Shot-2016-02-06-at-18.56.30.jpg?dl=0)
