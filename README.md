Rock, Paper, Scissors
-----------------------------------------------------------------------------

Brief
--------------------------

To create a game of Rock, Paper, Scissors for the Makers Academy Marketing Array (MAMA) that will have the following functionality:
* the marketeer should be able to enter their name before playing the game
* the marketeer will be presented with the following choices: rock, paper and scissors
* the marketeer can choose one option
* the game will choose a random option
* a winner will be declared


Game Rules
--------------------------

   A player chooses either rock, paper or scissors

   The second player (in this case, the computer) chooses either rock, paper or scissors

   One player will win if they satisfy the following:
    * They choose rock and the other person chooses scissors
    * They choose scissors and the other person chooses paper
    * They choose paper and the other person chooses rock

   Alternatively, they will both draw if they both choose the same option



User Stories
--------------------------

As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors


Test Driven Development with Rspec- Tests to be Implemented --- TO BE UPDATED!!!!!
--------------------------

Tests for the Game

	Feature: Game Play
	  Scenarios:
	    Player can choose between rock, paper and scissors
	    Computer makes a choice

	Feature: Win or Lose
	  Scenarios:
	    Player is told whether they won or lost






This is for the browser test

Feature Testing with Capybara:




Feature: Player registration
  Scenarios:
    Player enters their name
    Player doesn't enter their name





Unit Testing:
  Ask for player's name

  Redirect player to game page if they entered correct






How This Game Works on IRB
-------------------------

Create a new game, player and computer player by assigning any variable to Game.new, Player.new and Computer.new.
So let's say:

  $ game = Game.new
  $ player = Player.new
  $ computer = Computer.new

As you are the player, you can choose any of the three options: rock, paper and scissors. The function to make a choice as the player is player_choice('[insert your choice here]'). I'm going to choose 'rock':

  $ player.player_choice('rock')

To check the player's current choice, you can recall it with the 'choice' function:

  $ player.choice
  $    'rock'

Now we'll tell the computer to make a decision:

  $ computer.computer_choice

We won't need to give them an argument, as they'll be choosing randomly for themself. But we can sneak a peak at their choice with the 'choice' method again:

  $ computer.choice
  $    'scissors'

Hmm, this is looking good... Now let's see who's won (because, we don't know already, do we...)

  $  game.compare(player.choice, computer.choice)
  $    "YES! YOU WON!!!""

... And now let the hours of fun begin!




