[![Build Status](https://travis-ci.org/catherinestevenson/rps-challenge.svg?branch=master)](https://travis-ci.org/catherinestevenson/rps-challenge)  [![Coverage Status](https://coveralls.io/repos/catherinestevenson/rps-challenge/badge.svg?branch=master&service=github)](https://coveralls.io/github/catherinestevenson/rps-challenge?branch=master)

# RPS Challenge

Week three weekend challenge at Makers Academy. My task is to test drive the creation of a set of classes/modules to satisfy all the user stories below. In addition, I will use the Sinatra web application framework to convert my ruby code to a web application. Capybara will be used to write acceptance tests for the application.

## Task

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

### Basic rules of the game:

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

## Technologies Used:

1. Ruby
2. RSpec
3. Sinatra
4. Capybara
5. HTML and CSS
3. Github

## Functionality I implemented:

- the marketeer is able to enter their name before the game
- the marketeer is presented the choices (rock, paper and scissors)
- the marketeer can choose one option
- the game will choose a random option
- a winner will be declared

## Approach I took:

I started by breaking down each user story and outlining possible classes and methods. I decided to have three classes: Player, Computer and Game. I experimented using irb to figure out how my classes/objects would interact what method names to use. I then built the system using TTD, a RED -> GREEN -> REFACTOR approach, and wrote each test first, watched it fail, made it pass and then refactored if needed. This ensures that bugs can be eliminated.

## How the app works:

```
→ irb
2.2.3 :001 > require './lib/game.rb'
 => true
2.2.3 :002 > game = Game.new
 => #<Game:0x007ffb1b8f12e0>
2.2.3 :003 > player = Player.new
 => #<Player:0x007ffb1b901a50>
2.2.3 :004 > computer = Computer.new
 => #<Computer:0x007ffb1b909fe8>
2.2.3 :005 > player.choose(:paper)
 => :paper
2.2.3 :006 > game.play(player,computer)
 => "You loose!"
2.2.3 :007 > player.choose(:rock)
 => :rock
2.2.3 :008 > game.play(player,computer)
 => "It's a draw!"
2.2.3 :009 >
```

## Progress

App completed and all tests passing

## New things I learnt/improved on:

1. Sinatra web application
2. Capybara
3. HTML
