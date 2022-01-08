README & user stories file

# Project Title:
RPS (Rock-Paper-Scissors) Challenge

# Motivation: 
Attempt to complete the week (3) - weekend challenge with the aim to  reinforce learning outcomes from week 3. This will be my first web project.
- This will cover TDD process, redlight - greenlight
- Refractoring.
- Test coverage
- Peer reviews
- HTML
- Routing
- Params & sessions

# Installation:
- git clone git@github.com:[ElliottZaki]/rps-challenge.git
- cd rps-challenge
- RVM: ruby-3.0.2
- bundle
- rspec 
- rubocop '1.20'
- rackup

# Notable sources & references
https://ruby-doc.org/

# Build status:
Start
README / USERSTORIES.md
Testing stage

# User story 1:
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

____________________
noun     |   verb
---------|----------
maketeer | see
name     | register 
game     | 

takeaway ---> .menu ---> { dishes & prices }

# User story 2:
As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors

____________________
noun     |   verb
---------|----------
maketeer | enjoy
I        | play 

takeaway ---> .menu ---> { dishes & prices }

# Functionality:
The marketeer should be able to enter their name before the game
- visit '/' - Homepage - Push name - Game start

The marketeer will be presented the choices (rock, paper and scissors)
- Page will contain rock paper scissors choice.

The marketeer can choose one option
- Player_1 will be able to choose one option from the above.

The game will choose a random option
- Computer_player chooses a random option from above. 

A winner will be declare
- Results will be compared. Winner decided. 