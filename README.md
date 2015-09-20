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
I would like to be able to play rock/paper/scissors/lizard/spock
```

Hints on functionality:

- the marketeer should be able to enter their name before the game
- the marketeer will be presented the choices (rock, paper and scissors)
- the marketeer can choose one option
- the game will choose a random option(or another player will choose a second option)
- a winner will be declared!

Model
------
```ruby
$ game = Game.new
=> #<Game:0x007f826c22fe98
 @rules=
  {:rock=>
    {:rock=>:tie, :paper=>:lose, :scissors=>:win, :lizard=>:win, :spock=>:lose},
   :paper=>
    {:rock=>:win, :paper=>:tie, :scissors=>:lose, :lizard=>:lose, :spock=>:win},
   :scissors=>
    {:rock=>:lose, :paper=>:win, :scissors=>:tie, :lizard=>:win, :spock=>:lose},
   :lizard=>
    {:rock=>:lose, :paper=>:win, :scissors=>:lose, :lizard=>:tie, :spock=>:win},
   :spock=>
    {:rock=>:win, :paper=>:lose, :scissors=>:win, :lizard=>:lose, :spock=>:tie}},
 @score=[0, 0],
 @shapes=["rock", "paper", "scissors", "lizard", "spock"]>
$ comp = Computer.new
=> #<Computer:0x007f826b8c7c48>
$ game.result('Rock', comp.throws(game.shapes))
=> "LOSER!"
$ game.result('Lizard', comp.throws(game.shapes))
=> "LOSER!"
$ game.result('Paper', comp.throws(game.shapes))
=> "WINNER!"
$ game.score
=> [1, 2]
```
Bonus
------
## Bonus level 1: Multiplayer

Change the game so that two marketeers can play against each other.

## Bonus level 2: Rock, Paper, Scissors, Spock, Lizard

Change game so that it includes a Lizard and Spock!

Rock-Paper-Scissors-Lizard-Spock RULES:
-------
![rpsls_rules](http://pre06.deviantart.net/549c/th/pre/i/2011/125/7/7/rpsls_by_credesign-d3foo3v.jpg)

Developement/Feedback
--------

* Need to make 2 player game.

* Would like to play around with HTML and CSS when I skill up a bit more.

Instructions
---------
In project directory, run rackup.
```ruby
$ rackup
[2015-09-20 13:38:31] INFO  WEBrick 1.3.1
[2015-09-20 13:38:31] INFO  ruby 2.2.3 (2015-08-18) [x86_64-darwin14]
[2015-09-20 13:38:31] INFO  WEBrick::HTTPServer start: pid=37710 port=9292
```
Go to which ever port the app is being hosted on.
Author
-----
Dan St Paul
