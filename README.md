# RPS Challenge
==================
Introduction
---------

This program lets the user:
- enter a name
- play Rock Paper Scissors against a computer 
- see their result and play again

 *This is my weekend challenge for Makers Academy week 3
----

Approach
-------
1. I approached this the same way as the Battle challenge.  I created a directory outline with the lib, spec and views folders.

2. The biggest blocker was creating a set of rules for RPS.  I wanted the rules not to be orderly, so I used [ this hash ] (https://stackoverflow.com/questions/10923486/hw-impossibility-create-a-rock-paper-scissors-program-in-ruby-without-using-c)

3. Another challenge was incorporating Player One's choice into the controller (app.rb).

4. Feature tests were easier to write, as I could visualize the test events happening on each webpage.

5. Here is some sample irb code

```
3.0.0 :001 > require './lib/game.rb'
 => true
3.0.0 :002 > require './lib/player.rb'
 => true
3.0.0 :003 > require './lib/computer.rb'
 => true
3.0.0 :004 > p1 = Player.new('John')
 => #<Player:0x000000012885c928 @name="John">
3.0.0 :005 > c1 = Computer.new('RPS Comp')
 => #<Computer:0x0000000128927c18 @name="RPS Comp">
3.0.0 :006 > game = Game.new(p1, c1)
 => #<Game:0x000000012c8dfc20 @player_1=#<Player:0x000000012885c928 @name="John">, @player...
3.0.0 :007 > game.result(p1.weapon('rock'), c1.weapon_select)
PLAYER ONE: rock, COMPUTER: rock
 => :draw
3.0.0 :008 > game.result(p1.weapon('rock'), c1.weapon_select)
PLAYER ONE: rock, COMPUTER: scissors
 => :win
3.0.0 :009 > game.result(p1.weapon('rock'), c1.weapon_select)
PLAYER ONE: rock, COMPUTER: paper
 => :lose
```
In this sample ```game.result``` prints out the Player/Computer choices in the terminal.  I have done this so that we can see the computer's choice, because c1.weapon_select is random.  But I have removed terminal output in the final code.  It's not necessary because player and computer choices are displayed on the '/result' webpage.

**Improvements that are possible**

* Make webpage attractive
* Implement 2 player option 
* Improve app.rb tests
