# RPS Challenge

For this challenge we will develop a web application using sinatra on ruby. To TDD the process we will use capybara with rspec and selenium over firefox.

## User Stories
>As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

>As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors

## Approach

### Views

First we need a main view were we will ask for the player name with a Play button to start the game.
After saving the name in the session variable we will redirect to the play view were we will Welcome the player.

To be able to play RPS we need to give the chance to choose rock, paper or scissors, to do this we will use three button over a select for a better graphical design.

### Model

pc_player will take the role of another player, choosing a random option for RPS

check_result will give a winner from two entries.
