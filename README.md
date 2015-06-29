RPS Challenge
===============

## Synopsis

Project involves creating Rock, Paper, Scissors game that can be played on the web. App built using test driven development using a combination of feature and unit tests.


USER STORIES

As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors


## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock



## Technologies Used

- Ruby
- Rspec
- Capybara 
- Sinatra


## Job List

- Registration - create input field before start of the game so that marketeer can enter their name before starting the same, if no name is redirected to an error page and encourage to enter their name again
- Css animation used on text to give appearance of name appearing 'in lights' by using css animations (please note that these animations are not supported in all browsers - IE9 and below)
- Player class - I want the player to be able to choose different options - rock, paper, scissors
- Game class 
- Options for player/marketeer = rock, paper and scissors (only one can be selected at each turn/go)
- The computer chooses a random option - computer_choice
- Player plays against computer
- After selecting an option and clicking the enter button, player is notified about whether they have won, drawn or lost (well not yet but this is in progress)



## Still to complete/refactor

- I got really stuck when it came to putting the business logic into the controller and writing tests for the random computer generated tests here...
- Functionality to notify player when they have won, drawn or lost after selecting an option is still in progress...
- Refactor the win? method - it's pretty long and unsightly at the moment
- Tidy up player class and test - do you actually need most of the methods in this class now or are some redundant now that the game class has the functionality?
- Are the correct methods in the correct classes - OOD? Separation of concerns etc.
- Look at the following in LAB week:

## Bonus level 1: Multiplayer

Change the game so that two marketeers can play against each other ( _yes there are two of them_ ).

## Bonus level 2: Rock, Paper, Scissors, Spock, Lizard

Use the _special_ rules ( _you can find them here http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock_ )

