# RPS Challenge #

  This is a web app that demonstrates the game of rock, paper, scissors. It has accompanying capybara and Rspec tests when necessary.


## What criteria should this program satisfy?

- Enter your name before the game.
- Presented with choices (rock, paper and scissors).
- User can choose one option.
- The game will choose a random option.
- A winner will be declared.


## Basic Rules

- Rock beats Scissors.
- Scissors beats Paper.
- Paper beats Rock.

## How to run

  Run using the following in the command line:
```shell
rackup -p 4567
```

  This is the url of the server used:
```shell
http://localhost:4567
```

## My Process

  I started by creating a domain model to help outline what it was that I wanted to create, referring to the requirements of the game to ensure they were all being met within the model. I then implemented this model, editing when necessary.

  Rspec and Capybara tests were created alongside the features that were added. I used the server to test each new feature as they were added to make sure the code was not broken by new implementations.
