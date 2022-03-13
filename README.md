# Rock Paper Scissors

## Description

This program enables a user to play 'rock paper scissors' against a computer, whose selections are randomly generated. It was my first time using Sinatra and Capybara.

## How to Use

* Clone this repo

* Run the command `bundle install` in your terminal to install all the gems in the Gemfile

* Run the command `rackup` and visit your localhost using the port provided

## User Stories

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

## My Approach

1. Test-drove the creation of an index page with an input form for the user to enter their name and selection fields to choose from rock, paper and scissors

2. Pointed the form action to a POST method which redirected to a play.erb page welcoming the user and prompting them to get the computer's selection

3. Created a Game class and a Player class in the model layer to handle the action, which included storing 'rock', 'paper' and 'scissors' in an array for the computer to randomly select from

4. Mapped out the various permutations and rendered the result in a final view page using if/elsif statements in embedded Ruby

## Improvements I Would Like to Make

* As I hadn't yet learned how to use databases at the time of writing this program, its controller uses global variables. This is something I will be avoiding in future.

* If I was writing this program again from scratch, I'd make an extra page to separate the user name input and user selection. In doing so, the user could play the game multiple times without having to enter their name on each occasion.

## Technologies Used

* Ruby

* Capybara

* Sinatra

* Rubocop for linting and formatting

* SimpleCov for analysis of test coverage

[Jonny Abrams](https://github.com/jonnyabrams)

[![Ruby Style Guide](https://img.shields.io/badge/code_style-rubocop-brightgreen.svg)](https://github.com/rubocop/rubocop)