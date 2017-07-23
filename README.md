# RPS Challenge

Instructions
---

```
$ git clone https://github.com/aballal/rps-challenge.git
$ cd rps-challenge
$ bundle
```

- `$ rackup` then visit http://localhost:9292/ to play Rock, Paper, Scissors
- `$ rspec` for a summary of tests, checking that all tests are passing and test coverage (100%)
- `$ rubocop` for code style check (no offenses)


User Stories
---

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

Classes
---

#### Game

* Class methods
  * Game.instance : returns the class instance of the game class
  * Game.create : receives player_1 and player_2; creates a new class instance and returns it
* Attributes
  * Player 1 : currently receives Player instance
  * Player 2 : currently receives Computer instance
* Methods
  * result: returns `:win` / `:lose` / `:tie` based on RULES
    - Rock beats scissors
    - Scissors beats paper
    - Paper beats rock
* Constants
  * WEAPONS : Array `:rock, :paper, :scissors`
  * RULES : Hash that defines `:win` / `:lose` / `:tie` for all 9 possibilities of `:rock, :paper, :scissors` for Palyer 1 & 2

Although Game class receives Player as Player 1 and Computer as Player 2 it can be given any two objects as long as they respond to :weapon and return one of the WEAPONS

#### Player

* Attributes
  * name
* Methods
  * weapon : returns the weapon
  * weapon= : can be set to one of the WEAPONS  

#### Computer

* Attributes
  * name
* Methods
  * weapon : returns the weapon
  * weapon= : selects one of the WEAPONS at random

Note:
```
computer = Computer.new("Computer")
computer.weapon = nil
```

Passing nil to weapon= causes nil to be overwritten with a random weapon. The `.sample` is done on the setter method so that Computer's pick can be displayed and reading it doesn't cause it to change.

#### Controller

The controller is app.rb
* Routes
  * / : Registers the name
  * /play : Player 1 selects Rock / Paper / Scissors
  * /result : Player 1 and Computer's picks are displayed with the result.

Screenshot
---

https://www.dropbox.com/s/f3s03tov3s9ng8p/rps-challenge.png?dl=0
