# RPS Challenge

RPS is web-app built on Sinatra.  It allows users to play Rock, Paper, Scissors online against the computer or as a multi-player game.  

## To download and run the app:
```
$ git clone git@github.com:Alastair2D/rps-challenge.git
$ cd rps-challenge
$ bundle
$ rackup
```

## Modelling

[HTTP Request-Response Cycle + MVC Model](https://imgur.com/a/EpLJtuC)
<br>
[Domain Model](https://imgur.com/r3bDqJh)

<!-- [Domain Model]([Imgur](https://i.imgur.com/XVUM7Y7.png)) -->
<!-- <blockquote class="imgur-embed-pub" lang="en" data-id="a/EpLJtuC"><a href="//imgur.com/EpLJtuC"></a></blockquote><script async src="//s.imgur.com/min/embed.js" charset="utf-8"></script> -->
<!-- ![alt text](https://imgur.com/a/EpLJtuC) -->

## Goals
- Classes are designed around the principles of Delegation & Single Responsibility.  The Game class delegates state and behaviour of player-related information to the Player class.  
- Only the Game class is instantiated in the controller, separating concerns to make this web-app a more modular program.

## Testing
- This program was built test-first using RSpec and Capybara to allow the user stories to be feature-tested.
- As with all good OOP testing, all unit tests have been isolated using doubles, mocks, stubs & spies.  

-------

## Task
Knowing how to build web applications is getting us almost there as web developers!  The Makers Academy Marketing Array ( **MAMA** ) have asked us to provide a game for them. Their daily grind is pretty tough and they need time to steam a little.  Your task is to provide a _Rock, Paper, Scissors_ game for them so they can play on the web fulfilling the following requirements.

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
