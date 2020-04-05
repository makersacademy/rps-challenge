# RPS Challenge

A simple Rock, Paper, Scissors web-app.

User stories
----

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

Set up - spec_helper.rb
---

```ruby
require 'simplecov'
require 'simplecov-console'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  # Want a nice code coverage website? Uncomment this next line!
  # SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', 'rps.rb')

Capybara.app = Rps
```
Feature Test for rock, paper, scissors logic
---
```
2.6.5 :001 > require './lib/game.rb'
 => true
2.6.5 :002 > game = Game.new("rock")
 => #<Game:0x00007fcae3874cd0 @player="rock", @computer_turn="rock">

2.6.5 :003 > game.decide_winner
 => "It's a draw"
2.6.5 :004 > game1 = Game.new("rock")

 => #<Game:0x00007fcae388d848 @player="rock", @computer_turn="scisso
rs">
2.6.5 :005 > game1.decide_winner
 => "player wins"
2.6.5 :006 > game2 = Game.new("paper")
 => #<Game:0x00007fcae301db68 @player="paper", @computer_turn="sciss
ors">
2.6.5 :007 > game2.decide_winner
 => "computer wins"
2.6.5 :008 > quit
```

Further work
---

- Go through code review rubric; [code review rubric](docs/review.md). 
- Add button at results to allow user to play another game
- Could possibly add a best of three or five feature. Track the score as well. Note: rps.rb line 29 will may need to be altered.
- Add further CSS and HTML styling to improve the look.
- Implement the two bonus levels.


## Bonus level 1: Multiplayer

Change the game so that two marketeers can play against each other ( _yes there are two of them_ ).

## Bonus level 2: Rock, Paper, Scissors, Spock, Lizard

Use the _special_ rules ( _you can find them here http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock_ )



 
