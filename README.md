# RPS Challenge
This web app allows users to play an online game of Rock, Paper, Scissors. The user enters their name and then chooses rock, paper or scissors on the next page. When they click play, they are matched with the computer and a winner is announced.

## Stories Completed
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors

## Build Status
The project is currently complete and working for the above user stories. Future enhancements would be to add the ability for multiple human players, and the addition of the 'lizard / spock' extension of the game.

## Tests
Tests are run using rpec, rspec/capybara and rubocop. Currently all tests for rspec are passing. There are a few outstanding offenses in rubocop but these mostly refer to long lines, which I have not been able to reduce without major refactoring. Unit tests make use of doubles where necessary.

## Construction
The model for the game makes use of three classes: player, computer and game.

Player stores the name and choice of a human player, computer stores it's name, as well as a method for randomly choosing a play of rock, paper or scissors.

The computer class is designed to work in the same manner as the player class (taking the same arguments and having the same methods), which makes it easier to swap out a computer for a live player in future enhancements.

The game class takes two instances of players as arguments and uses their attributes when running a game. Edge case of trying to play a game when the players have not made a choice has been covered.

output from the game is stored in a session hash for output to the views, which consist of the landing page (index), play page where the user enters a choice and initates a game, and results page (result) where the result of the game is shown.
