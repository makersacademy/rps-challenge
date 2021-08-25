# RPS Challenge

## Introduction

This is a web app that uses Ruby and Sinatra to deliver a one or two player game of Rock, Paper, Scissors (or paper, scissors, stone as I called it when I was a child).

There is of course HTML, and also a tiny bit of CSS to liven things up slightly.

It is fully tested, with 100% coverage using RSpec and Capybara.

I really enjoyed this project: I used class methods and class instance variables from the outset, which made things relatively simple. I think I've kept the classes and methods in the model relatively lean. I wrote the single player version first, and then included two-player functionality. I am happy with my code, although there is perhaps still some logic in the controller that could be moved into the model. I'm happy with my unit tests on the whole, but I'm not sure I've got the hang of Capybara yet (or, at least, the skill of writing elegant Capybara feature tests). 

There's lots of functionality I could add: a score tally, graphics, 'lizard' and 'spock' weapons?

## Installation

```
git clone https://github.com/edpackard/rps-challenge.git
cd rps-challenge
gem install bundler # if required
bundle install
```

## How to use this program

From the `rps-challenge` directory, run `rackup` from Terminal. 

If rackup starts correctly, you should see a port number (i.e. `port=9292`)

Open a browser windows and enter http://localhost:9292/

You should see a screen welcoming you to Rock, Paper, Scissors

To play one player vs. the computer, enter your name in the player 1 box and click 'Let's Play!'

To play two player, enter names in both player boxes before clicking 'Let's Play!'

The game will not start if the player 1 box is left blank.

At the end of the game, you will be given the option to play again (vs. the same opponent), or return to the homepage.

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

## How to run the tests

Run `rspec` from Terminal within the `rps-challenge` directory. This will run all of the feature and unit tests. To run individual tests, put the file path after `rspec`, such as `rspec ./spec/unit/player_spec.rb`.

## User Stories
```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```
