# RPS Challenge

weekend challenge Makers Academy

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

screenshot homepage
![image](https://user-images.githubusercontent.com/33194929/40890797-985dd970-6773-11e8-85ec-c7e57fd68dea.png)

screenshot /play
![image](https://user-images.githubusercontent.com/33194929/40890787-6e3dc2a4-6773-11e8-9d8b-e33fc764adf2.png)

screenshot /result
![image](https://user-images.githubusercontent.com/33194929/40890806-b3ffddfe-6773-11e8-86d5-36866750e8c8.png)


### Irb
```
gadishas-MacBook-Pro:rps-challenge gadishazerari$ irb
2.5.0 :001 > require './lib/player.rb'
 => true
2.5.0 :002 > require './lib/game.rb'
 => true
2.5.0 :003 > player =Player.new('Gadiza')
 => #<Player:0x00007fb432038b88 @name="Gadiza">
2.5.0 :004 > game = Game.new(player)
 => #<Game:0x00007fb43114a8b0 @player1=#<Player:0x00007fb432038b88 @name="Gadiza">, @computer_pick=["Rock", "Paper", "Scissors"]>
2.5.0 :005 > game.player_move('Rock')
 => "Rock"
2.5.0 :006 > game.computer_choice
 => "Scissors"
2.5.0 :007 > game.result
 => "Rock beats Scissors, you Win!"
2.5.0 :008 > game.player_move('Paper')
 => "Paper"
2.5.0 :009 > game.computer_choice
 => "Paper"
2.5.0 :010 > game.result
 => "It's a Draw!"
2.5.0 :011 > game.player_move('Scissors')
 => "Scissors"
2.5.0 :012 > game.computer_choice
 => "Rock"
2.5.0 :013 > game.result
 => "Rock beats Scissors, You Lose!"
```
Use
---
clone repository
```bundle install``` in terminal
```rackup config.ru``` in terminal
and go to ```localhost:9292``` in your browser

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
