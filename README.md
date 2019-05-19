# RPS Challenge

## Task

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

## Approach

* Used a TDD approach, writing feature tests which drove the production of the
app.rb file and views.

* Wrote comprehensive unit tests for the game class, which tested every
possible game outcome.

* Started with the user playing against the computer, with the computer
randomly selecting one of rock, paper, or scissors (see earlier commits).

* Replaced this functionality to make it a two-player game, however would like
to add back in the option to play against a computer for times when there is no
second player available :(

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

## How to use

* Clone this directory and run bundle install.

* Run rackup and visit localhost in a browser.

* Enter player names and click 'Submit'.

![Screenshot](https://i.imgur.com/SLS2SDp.png)

* Each player chooses 'rock', 'paper', or 'scissors'.

![Screenshot](https://i.imgur.com/LqgXQwx.png)

* The winner is shown! (if there is one)

![Screenshot](https://i.imgur.com/XNmSgfT.png)

* To run tests run rspec from the root directory.

## Thoughts

* As mentioned before, it would be nice to re-include the option to play
against a computer.

* There is a more elaborate version of rock paper scissors with 'spock' and
'lizard' added as options. This could be added.

* The use of sessions is limiting, ideally there would be better ways of
saving objects which are more versatile (e.g. using a database, which I
believe will be covered next week). With this in mind player objects could be
created/ saved/ accessed later on.
