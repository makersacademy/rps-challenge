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
- css animation used on text to give appearance of name appearing 'in lights' by using css animations (please note that these animations are not supported in all browsers - IE9 and below)

- Built Player class - to include what?

- I want the player to be able to choose different options - rock, paper, scissors

- Built Game class - to include what?


- options for player/marketeer = rock, paper and scissors (only one can be selected at each turn/go)
- the computer chooses a random option - computer_choice
- player plays against computer
- after selecting an option and clicking the enter button, player is notified about whether they have won, drawn or lost





## Still to complete/refactor

- Refactor the win? method - it's pretty long and unsightly at the moment
- Tidy up player class and test - do you actually need most of the methods in this class now or are some redundant now that the game class has the functionality?
- Are the correct methods in the correct classes - OOD? Separation of concerns etc.


- I also did not get time to look at the following - to review/add in LAB week possibly?

## Bonus level 1: Multiplayer

Change the game so that two marketeers can play against each other ( _yes there are two of them_ ).

## Bonus level 2: Rock, Paper, Scissors, Spock, Lizard

Use the _special_ rules ( _you can find them here http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock_ )

