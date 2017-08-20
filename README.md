# RPS Challenge

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

My approach
-----------

I found this challenge quite interesting since I enjoyed shifting from Ruby to Web this week. At first, when I saw the User Stories (2 in total) I thought that the challenge would have been quite easy and fast but at the end it took me 1 day and a half, so even though there were not many Stories it was still quite intense and hard.

I started creating my infrastructure taking the Battle challenge as a model. I created a test first to check if an introduction string would have appeared and then I proceeded with the rest of the pages. The game allows you to play "Rock, Paper, Scissors" with a NPC so I had to create just one field for the Player name form, I didn't need two of them, as I did for Battle.

After that I created 3 buttons for the 3 possible choices, "Rock", "Paper" and "Scissors", and a fourth button that allows the player to go back to the index page and change name. Everything has been tested properly. Depending on the button chosen, the user will get a message to highlight the choice made. Just underneath this message, another string will appear with the choice of the NPC (a random one taken from an array of choices).

If the two options are the same, the user will get a message explaining that the match is a draw, otherwise the message will declare a winner.

In terms of testing, everything seems like working fine with a coverage of 100% and no Rubocop offences, even though I am quite sure I haven't tested exactly everything.

I am more than satisfied with my result, I definitely had fun trying to find a way to make the NPC choices work and interact with the user ones.
