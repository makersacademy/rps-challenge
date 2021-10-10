Anthony's RPS Challenge
=================
[Readme adapted from here](https://github.com/makersacademy/rps-challenge)

Instructions
-------

`git clone: https://github.com/AJOsmaston/rps-challenge.git`  
`cd rps-challenge`  
`bundle`  
`rackup`  

Task
----

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

* After starting the server, enter a name
* Click Select under classic
* Click either Rock, Paper, or Scissors
* Game will then be played and result will be displayed
* Can go back to play again
* Can go back to select another gametype (not yet implemented)
* Can go back to change names

Hints on functionality

- [x] the marketeer should be able to enter their name before the game
- [x] the marketeer will be presented the choices (rock, paper and scissors)
- [x] the marketeer can choose one option
- [x] the game will choose a random option
- [x] a winner will be declared

What I have learned during this project  
-----  

* Basic HTML, CSS, HTTP
* GET vs POST requests (MVC patterns)
* Basic debugging for web apps
* eRuby
* Capybara/Rspec testing

What I would like to implement in the future  
-----  

* Win vs Loss counter
* More attractive design
* Bonus level 1: Multiplayer functionality
* Bonus level 2: RPSLS expansion (see below)

## Bonus level 1: Multiplayer

Change the game so that two marketeers can play against each other ( _yes there are two of them_ ).

## Bonus level 2: Rock, Paper, Scissors, Spock, Lizard

Use the _special_ rules ( _you can find them here http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock_ )

Features
-----

* All tests pass - 25 examples, 0 failures
* [Test coverage](https://github.com/makersacademy/course/blob/main/pills/test_coverage.md):  100.00% -- 118/118 lines in 4 files
