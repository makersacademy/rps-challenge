# RPS Challenge ![Travis-CI](https://travis-ci.org/sliute/rps-challenge.svg?branch=master) [![Coverage Status](https://coveralls.io/repos/github/sliute/rps-challenge/badge.svg?branch=master)](https://coveralls.io/github/sliute/rps-challenge?branch=master)

Task
----

Knowing how to build web applications is getting us almost there as web developers!

The Makers Academy Marketing Array ( **MAMA** ) have asked us to provide a game for them. Their daily grind is pretty tough and they need time to steam a little.

Your task is to provide a _Rock, Paper, Scissors_ game for them so they can play on the web with the following user stories:

```
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


## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

How To Download and Run the App
----

```
$ git clone https://github.com/sliute/rps-challenge.git
$ cd rps-challenge
$ bundle
$ rackup

```

Progress
----

1. Story 01:
  * if the user hasn't registered, '/' sends them (via GET) to a registration form
  * the registration form asks for the user's name and sends it to a '/player' route that:
    - initialises a new player (Player class instance, singleton pattern)
    - stores the new player's object id in the session
    - redirects back to '/', where the user is recognised and sees their name
  * the '/' route now looks like this:
  ```
  get '/' do
    if player_stored
      "Hey, #{player_stored.name}!"
    else
      redirect '/register'
    end
  end
  ```
  * the Player class is unit-tested for all its class methods, and the player object is tested for its sole initialisation argument.
  * Screenshots:

  ![Screenshot](https://path_to_your_image)

2. Story 02: Model/Logic - unit & feature tests
  * the player can choose a weapon
  * an error is raised if the weapon is not part of the RPS singleton
  * the computer is a player-like object, with a default name. It too chooses a weapon randomly
  * a game object takes the player and the computer as parameters (player_01 and player_02 respectively)
  * the game calculates the result based on the RPS rules list it contains and it returns it (win, loss or draw).
  * PRY starts with this .pryrc:
  ```
  require './lib/player.rb'
  require './lib/game.rb'
  require './lib/computer.rb'
  p = Player.new("Stefan")
  c = Computer.new
  ```
  * then it goes:
  ```
  $ pry
  [1] pry(main)> p.choose(:rock)
  => :rock
  [2] pry(main)> c.choose
  => :paper
  [3] pry(main)> g = Game.new(p, c)
  => #<Game:0x007ffa7ca77d98
   @player_01=#<Player:0x007ffa7cbd6ae0 @name="Stefan", @weapon=:rock>,
   @player_02=#<Computer:0x007ffa7cbd6ab8 @name="Computer", @weapon=:paper>>
  [4] pry(main)> g.result
  => :p2
  ```


Issues
----

1. Story 01:
  * I haven't implemented colours yet. I plan to do so in Story 02, where '/' redirects to a route with a view when the player has registered.
2. Story 02: Model/Logic - unit & feature tests:
  * Not sure yet whether Computer should use class instance variable like Player.
