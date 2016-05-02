Rock, Paper, Scissors Challenge
===================

What is Rock, Paper, Scissors?
---------
Write a program with the following user stories:

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

Functionality
---------
* the marketeer should be able to enter their name before the game
* the marketeer will be presented the choices (rock, paper and scissors)
* the marketeer can choose one option
* the game will choose a random option
* a winner will be declared

Basic Rules
----------
* Rock beats Scissors
* Scissors beats Paper
* Paper beats Rock

Installation Instructions
------
```
$ git clone git@github.com:GeekG1rl/rps-challenge.git 
$ cd rps-challenge 
$ gem install 
$ bundle 
$ rackup 
```

Technologies Used
-------
* Ruby 2.2.3 
* Rspec 3.3.2
* sinatra gem
* capybara gem

Approach and Refactoring
------
* Made two classes: Player and Game 
* Probably could have done with a third class called Weapon to DRY up the program

Author
------
Mara Wanot
