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
After initialising the players and game we will redirect to the play view were we will Welcome the player.

To be able to play RPS we need to give the chance to choose rock, paper or scissors, to do this we will use three button over a select for a better graphical design. If the players chose a multiplayer game it will return to this page so the second player can choose his choice.

The las view will be the result one, giving the description an output of the fight.

### Controllers

In the name post we will store the name of the player as a session variable and call to the play view

In the play controller we will check if the player is the computer to skip this part and ask for the play if it's a person.

In the check post we will store the selection from the player, change the current player and go back to the play view. If both players chose their play it will redirect to the result.

In result we will calculate the result and display it in the view.

### Model
game will store the players and make them accessible.

player class will store the name and set the option chose by the player.

pc_player will take the role of another player, choosing a random option for RPS.

check_result will give a winner from two entries.
