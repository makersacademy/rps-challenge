# RPS Challenge
------
## Getting Started
Fork, then clone the repo:
```sh
git clone https://github.com/yadlra/rps-challenge.git
gem install bundle
bundle
```

## Running the tests
using rspec

## User Stories
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

## Approach
I began by doing small feature tests, followed by breaking down into unit tests.
May have jumped few steps when doing feature tests which led me to moving functions around.
This was later avoided by writing smaller unit tests and stepped back, looked at the functionality hints to break them into smaller parts. Tried and followed TDD step by step: 1. write feature test 2.break down into smaller unit tests 3. writing these tests and passing them 4. go back to feature tests. Following these steps allowed me to make sure I did not ended up with lots of failed tests. Although I felt the urge to build features and tests in bigger chunks, going in small steps helped me have better view and knowledge of my code.

## Project status - areas for development
* app.rb 'feature tests' had problems passing player and console moves, must work on this
* More tests
* Maybe using a domain model in future projects will help me have a defined structure, thus avoiding test problems
