# RPS Challenge

As the challenge provided only two user stories I have broken down the second 'epic' request into smaller achievable user stories based on the functionailty that I believe the Rock, Paper, Scissors (RPS) game should have.

## Original two user stories

As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors

## Expanded user stories

As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can see my options
I would like to be given a choice of either Rock, Paper or Scissors when playing the game

As a marketeer
So that I can choose which object to play
I would like to be able to select and confirm one of either Rock, Paper or scissors

As a marketeer
So that I can play the game
I would like to have a computer opponent to play against that will choose either Rock, Paper or Scissors

As a marketeer
Once I have played my chosen object
I would like to be able to see the object the AI overlord has chosen

As a marketeer
In order to see the outcome of the game
I would like to see who has won once both I and AI overlord have chosen our objects

## Note on failing tests

The computer opponent chooses a random element from a weapons array stored in a constant WEAPONS. Due to the random behaivour I have struggled to test for this as rspec mocking is still not very. Due to this there are a number of failing Rspec and Feature tests that a reliant on the random choosing of weapons.
