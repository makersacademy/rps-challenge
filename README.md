# RPS Challenge

A simple Rock Paper Scissors browser game for one player against a computer (so far).

Players enter their name, then pick rock, paper or scissors by clicking on the pictures. The computer then picks a random response from an array, which is then compared to the player's choice. In the case of a draw, the winner is declared as "Nobody."

# Downloading and installing

To download and install the app, run the following from your terminal:

$ git clone git@github.com:gweaton/rps-challenge.git
$ cd rps-challenge
$ bundle
$ ruby app.rb

Then open your browser and go to the following URL:
  localhost:4567

# Challenges:

For me, the main challenge throughout this project was the styling, as this was my first attempt at designing a website. I would like to improve the design on pages without images, adding a specific image for the computer's response, but struggled with where the logic for this should be stored.

# Future features:

I would like to implement multiplayer functionality, so the player has the option of playing against either another player or the computer.

I will also add the _special_ rules, adding the Spock and Lizard options to the standard Rock, Paper and Scissors.
