# RPS Challenge: Rōnin Badge Test

Instructions
-------
* Challenge time: Rock-Paper-Scissors-Lizard-Spock!
* I've just completed my third week at Makers Academy, and this weekend we were given the task of creating an online RPS game(mutiplayer) from scratch.

Task
----

Knowing how to build web applications is getting us almost there as web developers!

The Makers Academy Marketing Array ( **MAMA** ) have asked us to provide a game for them. Their daily grind is pretty tough and they need time to steam a little.

Our task is to provide a _Rock, Paper, Scissors, Lizard, Spock_ game for them so they can play on the web with the following user stories:

User Stories
-----
```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

Hints on functionality:

- the marketeer should be able to enter their name before the game
- the marketeer will be presented the choices (rock, paper and scissors)
- the marketeer can choose one option
- the game will choose a random option(or another player will choose a second option)
- a winner will be declared!

Model
------


Bonus
------
## Bonus level 1: Multiplayer

Change the game so that two marketeers can play against each other.

## Bonus level 2: Rock, Paper, Scissors, Spock, Lizard

Change game so that it includes a Lizard and Spock!

Rock-Paper-Scissors-Lizard-Spock RULES:
-------
![rpsls_rules](http://pre06.deviantart.net/549c/th/pre/i/2011/125/7/7/rpsls_by_credesign-d3foo3v.jpg)

Notes on test coverage
----------------------

Please ensure you have the following **AT THE TOP** of your spec_helper.rb in order to have test coverage stats generated
on your pull request:

```ruby
require 'coveralls'
require 'simplecov'

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
Coveralls.wear!
```

Note that you can replace `Coveralls.wear!` with  `SimpleCov.start` to get coverage stats locally
Then run `open coverage/index.html` from the command line to view details

Developement/Feedback
--------

Instructions
---------
```ruby
#code here
```
Author
-----
Dan St Paul
