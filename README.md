# RPS Challenge

RPS is web-app built on Sinatra.  It allows users to play Rock, Paper, Scissors online against the computer or as a multi-player game.  

## To download and run the app:
```
$ git clone git@github.com:Alastair2D/rps-challenge.git
$ cd rps-challenge
$ bundle
$ rackup
```

## Domain Model

```
** INSERT MODEL **
```

## Testing
The Ruby classes are designed around the principle of single responsibility - only the Game class is instantiated in the Controller, and the Game class delegates player-related information to the Player class.

The program was built test-first using Capybara and RSpec (Capybara allows the user stories to be feature-tested). As with all good OOP testing, the classes are tested in isolation using dependency injection. All randomness is stubbed to ensure consistency of test results.

## Focus Goals
- Classes should be designed around the principles of Delegation & Single Responsibility.  The Game class delegates state and behaviour of player-related information to the Player class.  
- Only the Game class is instantiated in the controller, separating concerns to make this web-app a more modular program.

## Testing
- This program was built test-first using RSpec and Capybara to allow the user stories to be feature-tested.
- As with all good OOP testing, all unit tests have been isolated using doubles, mocks, stubs & spies.  

## Task
Knowing how to build web applications is getting us almost there as web developers!  The Makers Academy Marketing Array ( **MAMA** ) have asked us to provide a game for them. Their daily grind is pretty tough and they need time to steam a little.  Your task is to provide a _Rock, Paper, Scissors_ game for them so they can play on the web with the following user stories:

## User Stories
```
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

## Bonus level 1: Multiplayer
Change the game so that two marketeers can play against each other
