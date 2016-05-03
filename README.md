ROCK PAPER SCISSORS CHALLENGE

Synopsis
--------
The task is to create a Rock, Paper, Scissors game where Rock beats Scissors, Scissors beat paper and paper beats rock. The user plays against a computer, the first player to reach 3 points wins the game.


Code Example
------------
''''2.2.3 :005 > player = Player.new('Hanna')
 => #<Player:0x007fc5c380b598 @name="Hanna", @points=0>
2.2.3 :006 > game = Game.new(player)
 => #<Game:0x007fc5c288cb30 @player=#<Player:0x007fc5c380b598 @name="Hanna", @points=0>, @computer=#<Computer:0x007fc5c288ca18 @name="Computer", @points=0>>
2.2.3 :007 > game.player_choice(:rock)
 => :rock
2.2.3 :008 > game.computer_choice
 => :scissors
2.2.3 :009 > game.result
 => "win"
2.2.3 :010 > game.win
 => #<Player:0x007fc5c380b598 @name="Hanna", @points=2>
2.2.3 :011 > ''''


Motivation
----------
Fourth weekend challenge, forked from MakersAcademy.


Progress
--------
Should have a few more tests. Also public interface needs to be improved.


Author
------
HannaEb