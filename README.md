Rock Paper Scissors Challenge
==================

Author: Emma Beynon

Github: https://github.com/emmabeynon

Email: emma.beynon@gmail.com


This is my submission for the Makers Academy Week 2 Weekend Challenge: https://github.com/makersacademy/rps-challenge

Overview
---------
The Makers Academy Marketing Array have asked us to provide a _Rock, Paper, Scissors_ game for them so they can play on the web.  The basic rules are:

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

The game should meet the following user stories:

User Stories
------------
```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

Instructions
------------
1. Fork this repo and clone to your local machine.
2. Run ```gem install bundle```
3. Once installation is complete, run ```bundle```
4. Run ```ruby app.rb``` or use your preferred interface.
5. View at: http://localhost:4567

Approach
---------
* NOTE: Global variables have been used as we have not yet been introduced to databases.  We know that we shouldn't use global variables normally. *
This game was developed using Ruby, HTML and Sinatra.  Development was test-driven using Capybara to simulate user interaction with the app.  After setting up the necessary gems and file structure, I started by creating a simple form for the player to submit their name, followed by a view where they can select their weapon of choice.  It soon became clear that a Player class was necessary in order to store the player's name and chosen weapon.  After this was done, I developed a Game class to handle the interaction between the players.  I then added functionality for the computer to randomly select a weapon to play with.  Now that both players could choose a weapon, I created a method in the Game class to calculate the outcome of each combination of weapons using a simple control flow.  This outcome is then displayed to the player, and they can choose to play another game.  Later I extended the functionality to allow player 1 to choose between playing the computer or another player when entering their name.  A different post route is used to handle player 2's weapon selection versus the computer's random selection and the views were edited to show different prompts and messaging depending on whether the opponent is a computer or a human.

Further Work
-------------
Complete Bonus level 2: Rock, Paper, Scissors, Spock, Lizard
Styling
