Rock, Paper, Scissors Challenge [![Build Status](https://travis-ci.org/makersacademy/rps-challenge.svg?branch=master)](https://travis-ci.org/makersacademy/rps-challenge)
===============================

The task was to build a game of rock, paper, scissors that a user could play on the web.

**Features of the game included:**
* User can register their name before playing;
* The user can play a game of RPS against a computer;
* The user is presented with choices (rock, paper or scissors);
* The user can choose one of those options;
* The game will generate a random option;
* A winner will be declared.

**Bonus features:**
* Add in multiplayer mode.

How I went about this challenge:
--------------------------------

I started this challenge off the computer and on paper and pen organising what pages there would be and how many classes and tests I would have.
At first I implemented single player mode and it all worked however with one Game class, then I refactored and extracted a player class.

After getting the tests to work correctly I started adding in multiplayer mode. I went back to paper and pen again to draw a flow chart of the order of pages. Once I managed to get that to work along with tests, I added in CSS styling in a separate `style.css` sheet with different pictures and colours.

Testing included RSpec unit tests for both the Player and Game classes. Feature testing was implemented with Capybara. As it currently stands the coverage of all feature and unit tests are at 97.83%.

**Yasmin Green**
