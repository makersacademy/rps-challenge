# RPS Challenge

Description
-------

This is a simple web page that allows one user playing a _Rock, Paper, Scissors_ game against the computer.
Rules reminder: Rock beats Scissors - Scissors beats Paper - Paper beats Rock.

How to download the program
----

* Clone this repo
* Run the command `bundle install` in the command line to ensure you have all the relevant gems installed
* Run `rackup` in the command line to start the server

Output example
-----
![screenshot](https://github.com/valentina-maggio/rps-challenge/blob/main/assets/Screenshot%202022-03-13%20at%2012.18.45%20copy.png?raw=true)
![screenshot2](https://github.com/valentina-maggio/rps-challenge/blob/main/assets/Screenshot%202022-03-13%20at%2012.19.07%20copy.png?raw=true)
![screenshot3](https://github.com/valentina-maggio/rps-challenge/blob/main/assets/Screenshot%202022-03-13%20at%2012.19.25%20copy.png?raw=true)

How to navigate the website
-----
1. Open the browser and go to localhost:9292
2. Enter the player's name in the "Enter your name" box
3. Click on "Go!" to start playing
4. Make your choice by clicking on one of the three buttons displayed: "rock", "paper", "scissors"
5. See the result and click on "Play again" to start a new game or on "Change player" to enter a new player's name

Info about software construction
-----

### User Stories used to design the software

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

### Steps taken to build the software

1. Domain modelling and diagramming to design the software implementation
2. Installation of the relevant gems (Sinatra, Rack, etc.)
3. Creation of infrastructure feature test
4. Building of controllers and views with relevant feature tests
5. Building of the model with Player, Computer and Game class with relevant unit tests

Technologies used
-----
* Ruby
* Sinatra
* Capybara
* Rack
* Simplecov
* Rubocop

Future implementations to consider
-----
* Change the game so that two players can play against each other.
* Use the special rules of _Rock, Paper, Scissors, Spock, Lizard_ ( _http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock_ )


[![Ruby Style Guide](https://img.shields.io/badge/code_style-rubocop-brightgreen.svg)](https://github.com/rubocop/rubocop)
