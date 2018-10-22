# RPS Challenge
This program is a simple Rock Paper Scissor game. The game can be played against the computer or against another player. The game also has the option to play the Rock Paper Scissors Lizard Spock rules

## Installation
Step 1: clone the repository
step 2: Run bundle
step 3: run ```ruby app.rb```

- [ ] README describes how to install the programme and its dependencies
- [ ] README describes how to use it - maybe includes screenshots
- [ ] README describes the approach and strategy for solving the problem


## System Plan
Before writing any tests or code, I made an initial plan of what I believed the system would look like when completed. This allowed me to consider how each component would work together while working on them.

### Model
**Game Class**

Constants
  * RULES{
    rps: {
      {rock: ['scissors'],}
      paper: ['rock'],
      scissors: ['paper']
    },
    rpsls: {
      {rock: ['scissors', 'lizard'],}
      paper: ['rock', spock],
      scissors: ['paper' lizard],
      lizard: ['paper', 'spock'],
      spock: ['rock', 'scissors']
    }
  }
  * OUTCOMES{
    rock smashes scissors etc
  }

initialize:
``` Ruby
  def initialize(gametype, player_1, player_2)
    @gametype rps or rpsls
    @players = [player_1, player_2] - player 2 > (Player::Computer class) or (Player::Human class)
    @current_turn = player_1
    @score = {p1: 0, draw: 0, p2: 1}
  end
```


Methods
  * #player_1 - @players.first
  * #player_2 - @players.last
  * #result - if draw return draw else winner
  * #draw?
  * #winner
  * #outcome - rock smashes scissors etc.
  * #switch_turn

**Player Class**

Constants
  * MOVES {rps: ['rock', 'paper', 'scissors'], rpsls: ['rock', 'paper', 'scissors', 'spock', 'lizard']}
  IMAGES {rock: '/rock.png', paper: '', ...}
Instance variable:
  * @options = set_moves

Methods
  * set_moves
    * return MOVES[gametype]
    * set_image
  * set_image


**Human Class < Player Class**

Instance variables
  * @name = name
  * @image = 'rock.png'

Methods
  * #make_move
    * raise error unless valid_move?
    * set players move
    * set_image
  * #valid_move?


**Computer Class < Computer Class**

Instance variables
  * @name = 'computer'

Methods:
  * #make_move - random selection from options class


### Views

```
    ├── / (game_type)
    ├── /no_players
    │   ├── one_player_signin
    │   │   ├── /signin
    │   │   ├── /game_initialization (redirects to next stage)
    │   │   └── /make_move < game type
    │   │       ├── RPS
    │   │       └── RPSLS   
    │   └── two_player_signin
    │       ├── /signin_player_one
    │       ├── /signin_player_two
    │       ├── /game_initialization (redirects to next stage)
    │       ├── /make_move_player_1 < game type
    │       │    ├── RPS
    │       │    └── RPSLS   
    │       └── /make_move_player_1 < game type
    │             ├── RPS
    │             └── RPSLS   
    └── /result
```




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
