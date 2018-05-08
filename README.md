# RPS Challenge

User Stories
----

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

Instructions
----

```
$ git clone git@github.com:[USERNAME]/rps-challenge.git
$ cd rps-challenge
$ bundle
$ rackup
```


Feature test
----

```
[1] pry(main)> require './lib/player.rb'
=> true
[2] pry(main)> require './lib/computer.rb'
=> true
[3] pry(main)> require './lib/game.rb'
=> true
[4] pry(main)> cpu = Computer.new
=> #<Computer:0x00007fab4aaa9b08 @moves=[:rock, :paper, :scissors]>
[5] pry(main)> oli = Player.new("Oli")
=> #<Player:0x00007fab4aac8ad0 @choice=nil, @name="Oli">
[6] pry(main)> rps = Game.new(oli, cpu)
=> #<Game:0x00007fab4aa554b8
 @computer=#<Computer:0x00007fab4aaa9b08 @moves=[:rock, :paper, :scissors]>,
 @player_one=#<Player:0x00007fab4aac8ad0 @choice=nil, @name="Oli">>
[7] pry(main)> oli.choice = "Rock"
=> "Rock"
[8] pry(main)> cpu.move
=> "Scissors"
[9] pry(main)> rps.result
=> "You win!"
```
