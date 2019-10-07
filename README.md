## Rock Paper Scissors - Makers Academy Weekend Challenge
=========================================================

## Task
-----

The task is to provide a _Rock, Paper, Scissors_ game so friends can play on the
web with the following user stories:

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

```
So that I can see my name in lights
I would like to register my name before playing an online game

So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

Hints on functionality

- the challenger should be able to enter their name before the game
- they will be presented the choices (rock, paper and scissors)
- they can choose one option
- the computer will choose a random option
- a winner will be declared

To play follow these instructions:

1. git clone git@github.com:CKKH/rps-challenge.git
2. cd rps-challenge
3. bundle
4. rackup
5. Go to http://localhost:[NUMBER]
6. Play!

## Approach

Followed Test Driven Development (TDD) process strictly to build this program.
During this challenge I realised that my TDD has improved since the previous
challenges, where I found RSpec (in particular lets and doubles) difficult to
implement. In this challenge I was able to use both more successfully.

To begin I used the given hints on functionality to make a capybara feature
test to drive development. This lead to me building a series of unit tests
through which a challenger and move class were created. By passing feature
test, the user could input their name and select rock, paper or scissors, then
submit both together through one button. This took the user to another page that
announced their move and a hard coded Computer move/result.

From here unit tests drove the development, which resulted in the Game,
Challenger, Computer and Move classes. Move was originally responsible for
holding the user's choice from the drop down menu, but I moved that
responsibility to be held directly by challenger rather than injecting it. Move
was later used to determine whether the challenger's choice beat the Computer's
randomly generated move. These three inject into Game, keeping their
responsibilities apart form each other. Only Game interacts in the controller
and determines what is viewed on the game page.

## How I would take this task further:

1. Add CSS styling

1. Change the game so that two friends can play against each other

2. Expand the rules by introducing Spock and Lizard to the options:
   http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock_
