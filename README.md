# RPS Challenge

[![Build Status](https://travis-ci.org/domvernon/rps-challenge.svg?branch=master)](https://travis-ci.org/domvernon/rps-challenge)

About
-------
This is a small project to reinforce concepts for building a web application. The project is an implementation of Rock-Paper-Scissors (extended with [Lizard-Spock](http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock) rules). It uses the Sinatra framework to unify the front end elements with the ruby back end. As usual, everything was done using a test driven development methodology, with pure Rspec for the unit tests and Capybara/Rspec for the feature tests. 

I have been careful not to use any global variables, so have kept an instance of the game in the singleton class. This allows information about the player to be accessed from all the views whilst restricting the flow of information to be as controlled as possible. Where possible I have tried to keep things object orientated and refactored code as much as possible to make this project readble and extendable.

Setup
-------
To run the project and play the game:
1. Clone the repo to your local machine
2. Change into the directory
3. run `bundle`
4. run `rackup` (you can specify a port by the `-p` flag, this is set as 9292 if no argument is given)
5. Navigate to [localhost:9292](http://localhost:9292)

To run the tests:
1. Change into the main directory
2. run 'rspec'

Instructions
-------
The project is not difficult to work out what is going on but here is a walkthough of how to play:

1. Navigate to [localhost:9292](http://localhost:9292)
2. Choose single player or multiplayer. The 'computer' will pick a random choice for single player.
![singleormultiplayer](/docs/singleormultiplayer.png)
3. For single player, you can enter your name in, or don't if you prefer.
![singleplayername](/docs/singleplayername.png)
4. For multiplayer, you can enter both your names in, or don't if you prefer.
![multiplayernames](/docs/multiplayernames.png)
5. Now choose your 'attack'. No peaking if you are playing multiplayer.
![attackoptions](/docs/attackoptions.png)
6. Once all 'attacks' have been made, you will automatically end up on the results page. Well done. You can play again if you really had nothing better to do.  
![playagain](/docs/playagain.png)

User Stories
-------

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```
