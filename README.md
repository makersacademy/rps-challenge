# RPS Challenge

Task
----

Knowing how to build web applications is getting us almost there as web developers!

The Makers Academy Marketing Array ( **MAMA** ) have asked us to provide a game for them. Their daily grind is pretty tough and they need time to steam a little.

Your task is to provide a _Rock, Paper, Scissors_ game for them so they can play on the web with the following user stories:

```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

Hints on functionality

- the marketeer should be able to enter their name before the game
- the marketeer will be presented the choices (rock, paper and scissors)
- the marketeer can choose one option
- the game will choose a random option
- a winner will be declared

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

## Technologies
This simple web game was built with Ruby and Sinatra. It used web forms to obtain data and pass this data between views, as part of demonstrating simply the MVC pattern.

## Tests

This project was built from the ground-up using the Test-Driven Development methodology, with both feature and unit tests in RSpec/Capybara. There is 100% test coverage.

## Using this Repo

- Clone it: ```git clone https://github.com/acodeguy/rps-challenge```
- Get inside, install nedded Gems: ```cd rps-challenge``` then ```bundle install```
- Start the web server: ```ruby app.rb```
- Visit ```localhost:4567``` in your web browser and play to your heart's content!