# RPS Challenge: Rōnin Badge Test

This is the 3rd weekend challenge for Ronin. The challenge involves making a web application for the game Rock, Paper, Scissors.

The instructions for this challenge can be found on the Makers site [here] (https://github.com/missamynicholson/rps-challenge).

I will be following the same process as I did for Battle Web in order to complete this challenge. The Battle Web Challenge instructions can be found [here] (https://github.com/makersacademy/course/blob/master/intro_to_the_web/00_challenge_map.md).
This challenge used Capybara and Selenium and the aim was to Test Drive development of a MVC compliant web application.
My repo for the Battle Web Challenge can be found [here] (https://github.com/missamynicholson/Battle).

# Installation instructions

1. Install Ruby
2. Update Gems
3. Install Git
4. Create clone of repository
5. Run bundle

# How to play?

```
2.2.3 :004 > t = Turn.new
 => #<Turn:0x007fcac89cda20>
2.2.3 :006 > p1 = Player.new(name:'Amy')
 => #<Player:0x007fcac8962590 @name="Amy", @points=0> 
2.2.3 :007 > p2 = Player.new(name:'Computer')
 => #<Player:0x007fcac8932390 @name="Computer", @points=0>
2.2.3 :008 > g = Game.new(player1: p1, player2: p2, turn: t)
 => #<Game:0x007fcac884fae0 @player1=#<Player:0x007fcac8962590 @name="Amy", @points=0>, @player2=#<Player:0x007fcac8932390 @name="Computer", @points=0>, @turn=#<Turn:0x007fcac89cda20>>
2.2.3 :009 > g.result('spock', 'paper')
 => "Player2 won! paper beats spock"
2.2.3 :012 > "Score #{p1.points}-#{p2.points}"
 => "Score 0-1"
2.2.3 :013 > g.result('paper', 'spock')
 => "Player1 won! paper beats spock"
2.2.3 :014 > "Score #{p1.points}-#{p2.points}"
 => "Score 1-1"
2.2.3 :015 > g.result('paper', nil)
 => "Player1 won! paper beats spock"
2.2.3 :016 > "Score #{p1.points}-#{p2.points}"
 => "Score 2-1"
2.2.3 :017 > g.result('spock', nil)
 => "Draw!"
2.2.3 :018 > "Score #{p1.points}-#{p2.points}"
 => "Score 2-1"
2.2.3 :019 > g.result('lizard', nil)
 => "Player1 won! lizard beats spock"
2.2.3 :020 > "Score #{p1.points}-#{p2.points}"
 => "Score 3-1"
2.2.3 :021 > g.result('lizard', nil)
 => "Player2 won! scissors beats lizard"
2.2.3 :022 > "Score #{p1.points}-#{p2.points}"
 => "Score 3-2"
 ```

#Badges

[![Coverage Status](https://coveralls.io/repos/github/missamynicholson/rps-challenge/badge.svg?branch=master)](https://coveralls.io/github/missamynicholson/rps-challenge?branch=master)

 [![Build Status](https://travis-ci.org/missamynicholson/rps-challenge.svg?branch=master)](https://travis-ci.org/missamynicholson/rps-challenge)
