# Week 3 - Weekend Challenge - RPS

## Task
The Makers Academy Marketing Array ( MAMA ) have asked us to provide a game for them. Their daily grind is pretty tough and they need time to steam a little.
Your task is to provide a Rock, Paper, Scissors game for them so they can play on the web

## Setup Instructions
```
$ git clone git@github.com:lukewickens1989/rps-challenge.git
$ cd rps-challenge
$ bundle install
$ shotgun 'config.ru'
* The navigate to localhost:9393 in the browser
```

## User Stories

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

### Initial approach
I will intially design the game to make an MVP without any implementation of bonus features or the use of any classes.
Once that is accomplish I will then draw out the functionality to apply SRP.
I will plan on making three views to begin with:
  * index - will diplay to home page where user will input name
  * plays - will allow user to make their choice (using radio buttons)
  * result - will tell the user:
    1. Confirmation of what they picked
    2. What the computer randomly selected
    3. Whether the user won, lost or drew with the computer
    4. Provide the option to play again (without having to resubmit name)

I will then design some rudimentary stying features that will make the user experience more enjoyable.
This will include calling the user by their given name.
I will ensure that these features have been fully tested using Capybara. The tests will cover:
  * user input of name
  * the selection of user options
  * the results will be fully tested for win, loss and draw scenarios

### Refactor
Once the functionality is correct and an MVP has been produced, I will then begin to refactor the code and make sure everything falls in line with SRP.
I will move classes into seperate files to follow the separation of concerns.
The buisness logic i will refactor from using an if/else statement to using a hash mash of winning combinations.
I will make classes for player (so that multiple players can be used - BONUS 1) and result (business logic around calculation).