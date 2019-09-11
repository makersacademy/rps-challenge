## RPS Challenge

[![Build Status](https://travis-ci.com/mikjw/rps-challenge.svg?branch=master)](https://travis-ci.com/mikjw/rps-challenge)

The third weekend challenge at Makers Academy: Build a Rock Paper Scissors (RPS) web app using MVC and the Sinatra library. User stories and full task instructions [here](https://github.com/mikjw/rps-challenge/blob/master/Instructions.md).
<br>

### To run

* Clone this repo and navigate to root folder
* Run `bundle install` to install dependencies
* Run `rackup` to start webserver
* Open browser and go to localhost:9292 (default Rack port)
<br>

### Approach to the problem

* I first considerd what a MVP would look like from the user stories: a single round of RPS against a computer opponent, with a front end limited to basic defaults.
* Set up the Sinatra controller using an `RPS` class; then worked in a cycle of writing a feature test in Capybara, then RPsec unit tests to drive the development of controller, model and view elements to pass each feature test.
* Initially used the session to store player information between requests, but later used `Game` class methods. This led to a DRYer controller using Sinatra filters and seemed preferable to storing entire player instances in the session.
* Stubbed random behaviour by setting `srand` to a known value when tests are run. 
* Added 'play again' button and minor font styling.
<br>

### To do / improvements

* Extract a `Computer` class - `Game` doesn't need to know what type of player it is receiving inputs from.
* Add multiplayer.
* Develop front end.


<br>

#### Sign-in 

<img src="https://github.com/mikjw/rps-challenge/blob/master/docs/sign_in.png" width=65%>

#### Play

<img src="https://github.com/mikjw/rps-challenge/blob/master/docs/play.png" width=65%>

#### Confirm choice

<img src="https://github.com/mikjw/rps-challenge/blob/master/docs/confirm.png" width=65%>

#### Result  

<img src="https://github.com/mikjw/rps-challenge/blob/master/docs/result.png" width=65%>
