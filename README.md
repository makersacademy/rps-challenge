# RPS Challenge ![Travis-CI](https://travis-ci.org/sliute/rps-challenge.svg?branch=master) [![Coverage Status](https://coveralls.io/repos/github/sliute/rps-challenge/badge.svg?branch=master)](https://coveralls.io/github/sliute/rps-challenge?branch=master)

Task
----

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

How To Download and Run the App
----

```
$ git clone https://github.com/sliute/rps-challenge.git
$ cd rps-challenge
$ bundle
$ rspec
$ rackup

```
... then open [http://localhost:4567](http://localhost:4567) in a browser and enjoy.

Progress
----

1. Story 01:
  * If the user hasn't registered, '/' sends them (via GET) to a registration form
  * The registration form asks for the user's name and sends it to a '/player' route that:
    - initialises a new player (Player class instance, singleton pattern)
    - stores the new player's object id in the session
    - redirects back to '/', where the user is recognised and sees their name
  * The '/' route now looks like this:
  ```
  get '/' do
    if player_stored
      "Hey, #{player_stored.name}!"
    else
      redirect '/register'
    end
  end
  ```
  * The Player class is unit-tested for all its class methods, and the player object is tested for its sole initialisation argument.

2. Story 02: Model/Logic - unit & feature tests
  * The player can choose a weapon
  * An error is raised if the weapon is not part of the RPS set.
  * The computer is a player-like object, with a default name. It too chooses a weapon randomly.
  * A game object takes the player and the computer as parameters (player_01 and player_02 respectively).
  * The game calculates the result based on the RPS rules list it contains and it returns it (win, loss or draw).
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
3. Story 02: Controller, Views and associated feature tests
  * Computer uses class instance variable just like Player.
  * Feature-tested and coded for the controller and the views.
  * If the human player provides a non-RPS weapon, the controller returns them to the weapon choice form, so they can provide a RPS one.
  * A new human player can now register and replace the current one when play begins.

4. Bonus Level 1: Multiplayer
  * Replaced computer with second human player.
    - Players now register both their names
    - Player 01 chooses first
    - Then Player 02 chooses
    - Then the result is displayed.
  * This change only required minor changes to the controller, the views and the feature (Capybara) tests. The model layer didn't require any modifications (except for the fact that the Computer class is not in use now).

Issues
----

1. Story 01:
  * I haven't implemented colours. I plan to do so after completing Story 02.
2. Story 02: Model/Logic - unit & feature tests:
  * Not sure yet whether Computer should use class instance variable like Player.
3. Story 02: Controller, Views and associated feature tests
  * Not sure if the controller should check that the player chooses a RPS weapon (the logic in player.rb already does that at model level). But who else could? Now it all depends on Game::WEAPONS. If the weapon choice form could query the same constant and provide a pull-down menu instead of a text field, I could get rid of the if/else logic. But the controller would still depend on Game's constant.
  * There is no nice HTML styling (no colours yet).
4. Bonus Level 1: Multiplayer.
  * There should be an option for Player 01 to choose between a human or a computer opponent.
  * No screenshots because I can't make Dropbox image links work in Github (yet).
