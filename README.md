# RPS Challenge: Rōnin Badge Test

Instructions
-------
* Challenge time: Friday, the entire day + the weekend if you need it
* Feel free to use google, your notes, books, etc but work on your own
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

* Filling out your learning plan self review for the week: https://github.com/makersacademy/learning_plan (if you haven't already)
* Forking this repo
* TEST driving development of your app

**Rōnin BANZAI!!!!**

## Bonus level 1: Multiplayer

Change the game so that two marketeers can play against each other ( _yes there are two of them_ ).

## Bonus level 2: Rock, Paper, Scissors, Spock, Lizard

Use the _special_ rules ( _you can find them here http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock_ )

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

IRB tests:

EXPECTED OUTCOME:
- emily = Player.new
- => #<Player:0x007fc4d18329d8>
- emily.pick "rock"
- => "You win!"/"You lost!"/"It's a tie!"

- emily = Player.new
- => NameError: uninitialized constant Player
- created rspec test and class
- => #<Player:0x007fc4d18329d8>
- emily.pick "rock"
- => nil
- created rspec test to return error if not "rock", "paper", "scissors", "lizard" or "spock"
- created rspec test to stub 'computer' and to return "you win!"
- irb(main):002:0> emily.pick "rock"
=> "You lose!"
irb(main):003:0> emily.pick "rock"
=> "You lose!"
irb(main):004:0> emily.pick "rock"
=> "You lose!"
irb(main):005:0> emily.pick "rock"
=> "You lose!"
irb(main):006:0> emily.pick "rock"
=> "You win!"
irb(main):007:0> emily.pick "rock"
=> "It's a tie!"
irb(main):008:0> emily.pick "rock"
=> "It's a tie!"
irb(main):009:0> emily.pick "rock"
=> "You lose!"
irb(main):010:0> emily.pick "rock"
=> "It's a tie!"
irb(main):011:0> emily.pick "rock"
=> "It's a tie!"
irb(main):012:0> emily.pick "rock"
=> "It's a tie!"
irb(main):013:0> emily.pick "rock"
=> "You win!"
irb(main):014:0> emily.pick "rock"
=> "You lose!"

Ruby logic to work out winner:

- Convert "rock", "paper", "scissors", "lizard" or "spock" to number from 1-5.
- Computer is rand(1..5).
- If the two numbers are both odd or both even, the the smaller number wins.
- If one number is even and the other is odd, the larger number wins.
- Or if the numbers are the same, it is a tie!
