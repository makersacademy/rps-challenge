RPS Challenge
=============

Implementation
--------

I created a features test file to guide my design, which consists of three classes - game, player and cpu. Each class has a corresponding spec file for unit tests, which are each mocked and stubbed to remove dependencies on each other, and in the case of the features test and game unit test randomness has also been stubbed.

My implementation allows for either single player vs the CPU or multiplayer - with each human player taking it in turns to enter their choice of hands (because this is on the same client, you'll each have to take turns to look away whilst the other is deciding).

Since this is a web based application, the user input is severely restricted in choices, thus removing the necessity to test edge cases for incorrect input. Player names are entered in as text, and choices are given as radio form buttons.

In addition, Bonus Story 2 has been implemented, featuring the additional hands of Spock and Lizard.


In my feature test, the following user stories were implemented:

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors

Bonus level 1: Multiplayer
Change the game so that two marketeers can play against each other ( yes there are two of them ).

Bonus level 2: Rock, Paper, Scissors, Spock, Lizard
Use the special rules ( you can find them here http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock )
```

Instructions
-----------
1. User can choose a game vs the CPU or another human, and also normal vs extended rules.
2. Player(s) input their names.
3. Players have to manually click to start the game.
4. Player chooses from Rock, Paper or Scissors (and Spock, Lizard for extended version).
5. If Multiplayer game, Player 2 chooses a hand.
6. Results are given, with a choice to play again.


Build Badge
------------------

[![Build Status](https://travis-ci.org/ggwc82/rps-challenge.svg?branch=master)](https://travis-ci.org/ggwc82/rps-challenge)
[![Coverage Status](https://coveralls.io/repos/github/ggwc82/rps-challenge/badge.svg?branch=master)](https://coveralls.io/github/ggwc82/rps-challenge?branch=master)
