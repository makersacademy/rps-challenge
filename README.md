# RPS Challenge

## Task

The Makers Academy Marketing Array ( **MAMA** ) have asked us to provide a game for them. Their daily grind is pretty tough and they need time to steam a little.

Our task is to provide a _Rock, Paper, Scissors_ game for them so they can play on the web, which is to be built with the user stories below.

I approached this challenge by using a test driven approach. I created the unit and feature tests with Rspec and Capybara:

1) Create a domain model and diagram from the user story
2) Create a failing test (red) in Rspec
3) Develop code to result in a passing test (green)
4) Refactor the code and re-test (orange)
5) Once I have A) high coverage, B) passing Rspec tests, C) code that fulfills the user story. I progress to the next user story and repeat steps 1-5

I used the MVC pattern to develop the web application, and the server is created with Sinatra.

## Getting started

1) git clone path-to-repo
2) Install bundler via `gem install bundle` (if you don't have bundler already)
3) Install dependencies via `bundle`

## Test Code

Run rspec from the root directory to test the code and check test coverage

## Run

In the terminal whilst at the root directory, type `rackup` and press enter
Enter the following url into your preferred browser: http://localhost:9292/

## User Stories

`As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game`

`As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors`
