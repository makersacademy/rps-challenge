RPS-Challenge
==================

Task
-------
Build a rock, paper, scissors game.

## Bonus level 1: Multiplayer

Change the game so that two marketeers can play against each other.

## Bonus level 2: Rock, Paper, Scissors, Spock, Lizard

Use the _special_ rules ( _you can find them here http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock_ )

Work on this challenge as conclusion of week 3, to work towards these goals:

* I version-control my projects
* I use a methodical approach to solving problems
* I test-drive my code
* I can work to a specification
* I create effective documentation
* I can design and build user interfaces
* I can write standards-compliant, clean object-oriented code

Instructions to run this at home
-----
```sh
$ git clone git@github.com:fbl11/rps-challenge.git
$ cd rps-challenge
$ bundle
$ rackup
```

STATUS
-----
Allows users to play a game of Rock, Paper, Lizard, Scissors, Spock against a computer or another human using a web interface.

This version completes all basic user stories and adds choices 'Lizard' and 'Spock' to the original weapons (Bonus Level 2).  The player can choose between a human opponent or a computer opponent (Bonus Level 1).

Controller
includes
- rps_app.rb
- feature_spec.rb testing all features
- web_helbers.rb to automate common steps in feature_spec.rb

Views
both
- index.erb

for single-player
- singleplayer.erb
- play.erb
- result.erb

for multi-player
- multiplayer.erb
- play2_p2.erb
- result_mp.erb

Model
includes
- weapons.rb / weapons_spec.rb
- player.rb / player_spec.rb
- game.rb / game_spec.rb

No rubocop offenses, 100% overall test coverage according to Rspec.

**Notes**
```
```

**TO DO**

- Revisit Weapons class.  Currently injected in player, not ideal.  Possibly better in Game class?  Also, consider making weapons a constant.

Notes on use
------------------
```
```

User stories
-----
```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors/lizard/spock

As a marketeer
So I can choose my weapon
I would be presented with choices (rock, paper, scissors, lizard, spock)

As a marketeer
So I can play against an opponent
the game will choose a random weapon for a computer opponent

As a marketeer
So I know whether I've won
the game will declare a winner based on the players' moves

```

Author
-----
Freya Becker [fbl11](https://github.com/fbl11/)
