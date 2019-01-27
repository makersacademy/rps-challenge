# RPS Challenge
```
           ___________    ____
    ______/   \__//   \__/____\
  _/   \_/  :           //____\\
 /|      :  :  ..      /        \
| |     ::     ::      \        /
| |     :|     ||     \ \______/
| |     ||     ||      |\  /  |        ROCK, PAPER, SCISSORS CHALLENGE
 \|     ||     ||      |   / | \
  |     ||     ||      |  / /_\ \
  | ___ || ___ ||      | /  /    \
   \_-_/  \_-_/ | ____ |/__/      \
                _\_--_/    \      /
               /____             /
              /     \           /
              \______\_________/
```
About this challenge
-------------
The aim of this challenge was to create a web-app which let the user play the game Rock, Paper, Scissors. The first version lets you play only against the computer. The second version lets two people play against each other.

Method of working
-------------
Since I have covered web-app construction in coursework prior to starting this challenge I was able to review and re-use that work. This meant I could quickly move forward on the first user story with code that had already been proven. So first test passed and 2nd commit & push done to make v1.0 
- v1.0 to get the directory structure and all the associated files set up, test that the homepage form accept a name and prints it in the page at /names
- v1.1 to put player names in a table and style that - I tested different options with table html, no TDD
- v1.2 added images on homepage to give it a Tron theme

Then I implemented a hash for the image URLs to refer to them easily. Next major change was
- v1.5 set the image links on /names to the /played result page passing the player's choice

I coded all the above by making small changes and checking behaviour and presentation when I feature tested in the browser. The Sinatra error trace led me to fix the bugs. No tests were done in RSpec.
I then passed the player and choice in the image links in /names. Again I used the Sinatra error trace to locate and fix the bugs. Next milestone was in v1.7
- v1.7 populated the results table with player name and images according to choices, and result image - Tron/MCP/football-match for player 1 won/lost/draw

I did some fixes after behaviour testing and seeing some errors e.g. Play again link was not passing player name back and variable name was being printed instead of player name in result table. All this was done again not by using RSpec instead I did a sort of TDD with the browser. Finalised the game to make release v2.0 , some styling improvements may be done in a future version e.g. making the images all the same size which would mean the tables would always be the same size.
- v2.0 release version for one player game 

For the 2 player game, I copied all the routes and code I had done for the one player game. This was a quick solution to get something done, and has led to a lot of duplication which would need to be refactored. New version v2.1 
- v2.1 has initial set up for the 2 player game, not working yet


-----------
Original README content
========
Instructions
-------

* Challenge time: rest of the day and weekend, until Monday 9am
* Feel free to use google, your notes, books, etc. but work on your own
* If you refer to the solution of another coach or student, please put a link to that in your README
* If you have a partial solution, **still check in a partial solution**
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


As usual please start by

* Forking this repo
* TEST driving development of your app


## Bonus level 1: Multiplayer

Change the game so that two marketeers can play against each other ( _yes there are two of them_ ).

## Bonus level 2: Rock, Paper, Scissors, Spock, Lizard

Use the _special_ rules ( _you can find them here http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock_ )

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

In code review we'll be hoping to see:

* All tests passing
* High [Test coverage](https://github.com/makersacademy/course/blob/master/pills/test_coverage.md) (>95% is good)
* The code is elegant: every class has a clear responsibility, methods are short etc.

Reviewers will potentially be using this [code review rubric](docs/review.md).  Referring to this rubric in advance may make the challenge somewhat easier.  You should be the judge of how much challenge you want this weekend.

Notes on test coverage
----------------------

Please ensure you have the following **AT THE TOP** of your spec_helper.rb in order to have test coverage stats generated
on your pull request:

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
