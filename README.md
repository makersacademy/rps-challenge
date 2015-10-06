Rock, paper, scissors, lizard and spock!		[![Build Status](https://travis-ci.org/UsmanJ/takeaway-challenge.svg?branch=master)](https://travis-ci.org/UsmanJ/takeaway-challenge)	[![Coverage Status](https://coveralls.io/repos/UsmanJ/takeaway-challenge/badge.svg?branch=master&service=github)](https://coveralls.io/github/UsmanJ/takeaway-challenge?branch=master)
======================

Instructions
-----

The task set was to build a rock, paper, scissors game. The advanced part of the challenge was to turn the game into a multiplayer game and also add lizard and spock to the game.


Approach towards solving the challenge
--------------------------------------

In order to solve the challenge I decided on creating three seperate classes. One for the game itself, another for the human players and last but not least, a class for the computer player.

I built the system using test-driven development to ensure that bugs can be eliminated. As you can see the build has 100% coveralls and all rSpec tests are passing.

The RPSLS game is fully functional. If you feel that there are any errors or improvements can be made then please let me know.


Steps of playing the game
---------------------------------
```
irb(main):001:0> require './lib/game.rb'
=> true
irb(main):002:0> g = Game.new
=> #<Game:0x007fd78a8587c0>
irb(main):003:0> p1 = Player.new
=> #<Player:0x007fd78a82b158>
irb(main):004:0> p2 = Player.new
=> #<Player:0x007fd78a810088>
irb(main):005:0> p1.choose(:rock)
=> :rock
irb(main):006:0> p2.choose(:lizard)
=> :lizard
irb(main):007:0> g.play(p1,p2)
=> :player_wins
```
