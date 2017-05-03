# Rock Paper Scissors web game

Intro 
----

Provide a _Rock, Paper, Scissors_ game for the web with the following user stories:

```sh
As a user
So that I can see my name in lights
I would like to register my name before playing an online game

As a user
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

## Basic Rules

- Rock beats Scissors.
- Scissors beats Paper.
- Paper beats Rock.

## Set up guide
- Fork this repo.
- Run bundler to set up the Gemfile.
- launch Rackup.
- go to local host page to start the game.

## How to play
![Start](https://raw.githubusercontent.com/j-rods/rps-challenge/master/public/start.png)

- Enter your player name to play, you will play against the computer.
- Select a _Rock, Paper, Scissors_ option, the computer will also select an option.
- Battle! The winner will be announced.

Play it live [here](the-rps.herokuapp.com)!

## My approach

### Environment

I've built a simple TDD game in an environment using Sinatra, Capybara, Selenium-webdriver and Rack.

### Functionality

The random roll for the computer is handled in the back with Ruby. In the front I run a roll check that shows a block of code as an outcome to the roll.
When the game ends, the user can play again.
I also provide a home button that takes the user back to start (ends current session).

Implemented functionality:

- the marketeer should be able to enter their name before the game.
- the marketeer will be presented the choices (rock, paper and scissors).
- the marketeer can choose one option.
- the game will choose a random option.
- a winner will be declared.

### Interface

The interface is built using HTML5 and CSS3, and follows an 8-bit style.
Best used in Chrome.



