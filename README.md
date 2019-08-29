# :fist: :hand: :v: Rock Paper Scissors :fist: :hand: :v: 

[![Build Status](https://travis-ci.com/petraartep/rps-challenge.svg?branch=master)](https://travis-ci.com/petraartep/rps-challenge)


---

## Approach

- build domain model
- build the landing page
- add functionalites
- keep testing the site on localhost while building 

--- 

## Challenges

- testing randomness
- adding CSS to `.erb` files
- implement a result class and tests to return the right value
- app running on localhost but tests are failing 

---

## Technologies used
- Ruby 2.5.0
- Sinatra 2.0.0
- Cabybara 2.17
- RSpec 3.7.0
- Rubocop 0.56.0

---

## Run the program

- Clone this repo to your local machine
- Run `bundle install`
- Run `rackup` in terminal to start the server and visit `localhost:9292` in your browser
- Run `rspec` to test the application

<img width="426" src="https://user-images.githubusercontent.com/23095774/59566978-1fb8ac00-905f-11e9-91ab-5ac2f40b9d34.png">

Enter your name

<img width="422" src="https://user-images.githubusercontent.com/23095774/59566979-221b0600-905f-11e9-83f3-843eff312d80.png">

Select an option

<img width="428" src="https://user-images.githubusercontent.com/23095774/59566981-2515f680-905f-11e9-8141-a247855a9c01.png">

It's show the result

---

## User Stories 

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```
---

## Functionality

- the marketeer should be able to enter their name before the game
- the marketeer will be presented the choices (rock, paper and scissors)
- the marketeer can choose one option
- the game will choose a random option
- a winner will be declared

---

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

--- 

## Passing Test Suites

<img width="557" src="https://user-images.githubusercontent.com/23095774/59566977-1a5b6180-905f-11e9-9122-45906108b119.png">

---

## Yet to complete

- Implement a counter for the score
- Multiplayer mode
  -  Two marketeers can play against each other
- Extension to Rock, Paper, Scissors, Spock, Lizard

---

