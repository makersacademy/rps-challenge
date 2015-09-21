[![Build Status](https://travis-ci.org/chn-challenger/rps-challenge.png)](https://travis-ci.org/chn-challenger/rps-challenge)
[![Code Climate](https://codeclimate.com/github/chn-challenger/rps-challenge/badges/gpa.svg)](https://codeclimate.com/github/chn-challenger/rps-challenge)
# Rock-Paper-Scissors Challenge

Tasks
-------
* *Version1* Make a rock-paper-scissors class game to be playable against a computer player who chooses randomly.
* *Version2* Make an extended game of _Rock-paper-scissors-lizard-Spock_ to be playable against a computer player who chooses randomly.
* *Version3* Allow both players to be human.
* Add pictures, styling and animation to make it more exciting.

Features implemented
----
* Computer Player class, have name, can choose weapon at random.
* Human Player class, have name, can enter weapon and read current weapon choice.
* Added lizard and spock to game logic (Game class).
* Added tests to include all possible computer v human cases of the game.
* Added 'try again' page if human choice entered is not valid as well as associated test suites. yeah..

To do
----
* Feature testing with capybara - find out how to stub random choice made by the computer when playing a game on web powered by Sinatra.
* Version3.
* Visuals stylings.
