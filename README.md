# RPS Challenge: Rōnin Badge Test

Self-Appraisal
--------------
This is the furthest I've managed to get in any of the weekend challenges so far.
Writing the game took a large part of the weekend so I lent heavily on google and
github in order to build the web app.  It was important to me this weekend to see
something that was working, and which able to interact between classes and pages,
so although the app is far from perfect, I feel like I have learnt a huge amount
from the process.

Both the game code and web app code could be significantly refactored but I have
deliberately left it in its current state as this most accurately reflects where
I'm at in my coding right now.  In the future I intend to revisit and rework it.  

Instructions
------------
* Challenge time: Friday, the entire day + the weekend if you need it
* Feel free to use google, your notes, books, etc but work on your own
* You must submit a pull request to this repo with your code by 9am Monday morning

Task
----

Knowing how to build web applications is getting us almost there as web developers!

The Makers Academy Marketing Array ( **MAMA** ) have asked us to provide a game for them. Their daily grind is pretty tough and they need time to steam a little.

Your task is to provide a _Rock, Paper, Scissors_ game for them so they can play on the web with the following user stories:

```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

Hints on functionality

- the marketeer should be able to enter their name before the game
- the marketeer will be presented the choices (rock, paper and scissors)
- the marketeer can choose one option
- the game will choose a random option
- a winner will be declared

## Bonus level 1: Multiplayer

Change the game so that two marketeers can play against each other ( _yes there are two of them_ ).

## Bonus level 2: Rock, Paper, Scissors, Spock, Lizard

Use the _special_ rules ( _you can find them here http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock_ )

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

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
