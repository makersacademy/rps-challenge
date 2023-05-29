# RPS Challenge

Task
----

Knowing how to build web applications is getting us almost there as web developers!

The Makers Academy Marketing Array ( **MAMA** ) have asked us to provide a game for them. Their daily grind is pretty tough and they need time to steam a little.

The task was to provide a _Rock, Paper, Scissors_ game for them so they can play on the web with the following user stories:

```
1) As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

2) As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

Hints on functionality

- the marketeer should be able to enter their name before the game
- the marketeer will be presented the choices (rock, paper and scissors)
- the marketeer can choose one option
- the game will choose a random option
- a winner will be declared

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

## Progress so far

User Story 1) is complete. The user is greeted at the start of the game and can submit their name. When they've submitted their name, they are invited to play with a "Let's play <name>" message. 
  
Progress made on User Story 2). The player submits their choice for the game - Rock, Paper or Scissors. The computer's choice is randomly generated and shown on the screen. 
  
The game logic is built using if/elsif statements. I know it would be better to do this using a hash - I need to work on updating the code to use this instead. 
  
I need to build the feature tests for declaring the winner and finish the game.
  
All tests currently passing. 

Notes on test coverage
----------------------

Spec_helper.rb includes the following in order to have test coverage stats generated:

```ruby
require 'simplecov'
require 'simplecov-console'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  # Want a nice code coverage website? Uncomment this next line!
  # SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start
```

You can see your test coverage when you run your tests. If you want this in a graphical form, uncomment the `HTMLFormatter` line and see what happens!