# Rock, Paper, Scissors Challenge

Week 3 challenge that builds on the skills and concepts covered during the week. The current functionality means that a two players can register and play a round of Rock, Paper, Scissors. The winner is being recorded on the backend but isn't being displayed to the user. This has broken since implementing mulitplayer functionality. 100% Test coverage.

Concepts
---------
* The relationship between a client and a server.
* How HTTP is used to send information over the web.
* RESTful APIs.
* The request/response cycle.
* Web templating with HTML/CSS.

Skills
--------
* Debugging programs that use multiple languages.
* Using a framework (Sinatra) in your code.
* Structuring the code for apps that have user interaction and visual output.
* Testing apps that have user interaction and visual output.
* Tracing data between the browser and server.

Instructions
-------

1. Clone the repository

```
$ Bundle 
$ rackup -p 4567
```

User Stories
----

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```


## Bonus level 1: Multiplayer

Change the game so that two marketeers can play against each other ( _yes there are two of them_ ).

## Bonus level 2: Rock, Paper, Scissors, Spock, Lizard

Use the _special_ rules ( _you can find them here http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock_ )

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

Issues to fix
----

1. Implement Rock, Paper, Scissors, Spock, Lizard
2. Add in error handling
3. Add menu to choose which mode the user would like to play e.g vs Computer or RPSPL
