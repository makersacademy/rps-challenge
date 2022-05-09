## Rock, Paper, Scissors

# How to install
Fork this repo, and clone to your local machine
Run the command gem install bundler (if you don't have bundler already)
When the installation completes, run bundle

# How to Run and Play
Run rackup in the command line to start the server
Open the browser and go to http://localhost:4567/
Enter the player's name in the "Player Name:" box
Click on "Submit!" to start playing
Select your action by clicking on "rock", "paper" or "scissors" and then hitting submit.
See the result of your action against the computer.

# How to test your code
Run RSpec from the rps-challenge directory.

# Introduction

This project is the weekend task following the third week at Makers Academy.
The project comprises the construction of an online rock, paper, scissors game, where you can play against the automated computer. 
The code of for this program is divied into a Model, a Controller and Views. The only class used was Game, which ran the mechanics of
an automated RPS game.

### Classes

class Game: Initialises with the players move as an argument.
            random_choice: selects a random action for the computer from rock, paper, scissors.
            return_winner: compares the two moves and chooses a winner.

### Views

index:   The index view is associated with the homepage. It renders a form for the player to infill with their name.
play:    The play view renders a form with the options of 'rock', 'paper' or 'scissors' on the '/play' page.
result:  The result view renders the outcome of the RPS game, comparing the user move against the computer and announcing the result.

# Motivation

The motivation behind this project is to introduce the concept of creating an application available on the internet. The application itself simple, because the emphasis of this project is to learn about writing a program that runs online. The new concepts to me in this project were:

  * Creating a local server.
  * Writing code to direct users to different web pages.
  * Splitting the code into a Model, Controller and Views.
  * Writing tests for web pages using Capybara.
  * Using HTML and CSS to format a website.
  * Integrating Ruby code into HTML.

# Brief

As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors

# Key Thoughts and Issues

  * Things to add include a "play again" button (which would re-route back to the '/play' page), the ability for two players to play the game and further complexity by introducing 'rock', 'paper', 'scissors', 'lizard', 'spock'.
  * I had issues getting certain methods to work between the Model, Controller and Views. This led me to abandoning certain methods.
  * I successfully managed to stub the random_choice method to check all outcomes of the game. 

