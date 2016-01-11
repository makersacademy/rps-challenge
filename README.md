![makersacademy](https://github.com/allimac/resources/blob/master/ma_logo.png)

**week 3 / weekend challenge**

# The challenge

This weekend challenge is to create a Rock/Paper/Scissor Game using our newly learned skills in Ruby/Sinatra/HTML/CSS.
NOTE: Please excuse the use of Ruby $global variables; we haven't yet touched on databases during the course!

## User stories

```
As a user
So that I can see my name in lights
I would like to register my name before playing the game

As a user
So that I can play my turn
I need to be able to choose one option between paper/scissors/rock

As a user
So that I can play against the computer
I need to be able to see the choice the computer has made

As a user
So that I can see who won the turn
I need to see a confirmation of who won the turn

As a user
So that I can see if the turn was tie
I need to see a confirmation that the turn was tie

As a user
So that I can see who is more likely to win
I need to see a summary of the score for each turn

As a user
So that I can see who won the game
I need to see a confirmation of who won the game when the score reaches 3

```

# Implementation

My implementation was driven by acceptance unit test cycles. The final implementation has 3 classes with defined responsabilities.

## Modules & gems

* Sinatra
* Rake

Test environment:
* Rubocop
* Coveralls
* Capybara
* Rspec

## How to use it
Make sure you first have all the necessary gems running
```
$ bundle install
```
Then run the app.rb file
```
$ ruby app.rb
```
Finally visit the game at /localhost:4567. Enjoy! :) (simple things in life are the best)


## Classes

### Game

Game is the 'facade' class for each game session. It is instantiated with two players (the second defaults to 'Computer') and a Turn class for easy stubbing when test.
```
game = Game.new(Player.new('John'), Turn)
```
It receives the following messages:
* play_turn(weapon1, weapon2) => this message instantiate a new turn with the selected weapons as arguments, increasing the score of the winning player. It returns a final message if any of the player is winner.
* find(dish)
* turn_message (delegator from Turn)
* win_message

### Player

Two players are instantiated with every Game. A player is instantiated with a name and a score starting from 0.
It receives the following messages from Game:
* score_up
* winner?

### Turn

Turn is instantiated at every turn. Following the game rules, it returns the winner and a feedback message for each turn.
It receives the following messages:
* winner
* message


## Future improvements

* stub randomised weapon for computerised player
* refactoring of turn rules
* introduce option to play DELUX version: Scissors/Paper/Rock/Lizard/Spock
