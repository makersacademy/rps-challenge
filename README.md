# Rock Paper Scissors Lizard Spock by Zeshan Rasul

 This is the Week 3 Rock Paper Scissors Lizard Spock challenge by Zeshan Rasul

## Playing the game on Heroku

The game is available to play at http://zeshanrasul-rps.herokuapp.com/.  

## Installation instructions

To install the application on your local system, run the following commands in your command line.

```
$ git clone https://github.com/ZeshanRasul/rps-challenge.git
$ cd rps-challenge
$ bundle
$ rackup
```
You can then visit the localhost at the port given by rackup in the command line and play the game in your browser.

You may need to `$ gem install bundle` if the `$ bundle` does not work.

Tests can be run by running `$ rspec` in the command line while in the `rps-challenge` directory.  There are unit tests testing every possible outcome and each method through the classes.  Capybara feature tests are used to test the various features of the application.

Screenshots of the application can be found below.

## User Stories

I began this challenge by using the following User Stories as direction.

```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

I then continued the development by implementing the following bonus features.

## Bonus level 1: Multiplayer

Change the game so that two marketeers can play against each other ( _yes there are two of them_ ).

## Bonus level 2: Rock, Paper, Scissors, Spock, Lizard

Use the _special_ rules ( _you can find them here http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock_ )

## Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock
- Lizard beats Paper
- Spock beats Rock
- Rock beats Lizard
- Scissors beats Lizard
- Paper beats Spock
- Lizard beats Spock
- Spock beats Scissors

## Screenshots

### Login page
![Screenshot](https://raw.githubusercontent.com/ZeshanRasul/rps-challenge/master/docs/playerlogin.png)

### Attack choice
![Screenshot](https://raw.githubusercontent.com/ZeshanRasul/rps-challenge/master/docs/attackchoice.png)

### Results
![Screenshot](https://raw.githubusercontent.com/ZeshanRasul/rps-challenge/master/docs/resultspage.png)

### Multiplayer
![Screenshot](https://raw.githubusercontent.com/ZeshanRasul/rps-challenge/master/docs/multiplayerlogin.png)
![Screenshot](https://raw.githubusercontent.com/ZeshanRasul/rps-challenge/master/docs/player1choice.png)
![Screenshot](https://raw.githubusercontent.com/ZeshanRasul/rps-challenge/master/docs/player2choice.png)
![Screenshot](https://raw.githubusercontent.com/ZeshanRasul/rps-challenge/master/docs/multiplayerresults.png)
