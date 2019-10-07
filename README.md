### Rock, Paper, Scissors ###

This is a web application which allows the user to play rock, paper, scissors against the computer.

## My approach ##
I used TDD to build this program and have 100% test coverage.

I aimed to develop a model-view-controller pattern and keep the controller "skinny". At the model level I tried to follow the single responsibility principle, although the private methods in the Game class could be further refined.

## How to use ##
- Clone this repo and run `bundle install`.
- In the command line run `ruby app.rb`.
- Open your web browser and go to page localhost:4567/ and then follow the instructions.

## Extending this program ##
This program was designed with the intention of also offering a multiplayer option at the beginning so that the user could decide whether to play against a friend or the computer. The Game class could be easily adapted so that it is initialized with two players, as opposed to one as it is currently, with the Computer being set as the default player_2. An additional page would need to be created allowing player_2 to submit their choice of rps, but other changes to the current program should be fairly minimal.
