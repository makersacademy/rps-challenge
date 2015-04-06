This is my first attempt at the RPS game. I didn't look at the RPSSL version. I wanted to start with a RPS working one, with 1 or 2 players.

First, I looked at TDD and my classes:
I created 2:
- player. name in initialize and a RPS hand to chose in a method.
- game, that can add players (1 or 2), and gives a winner of the hands that the player chose previously. If 1 player only, there is a method that defines the CPU as the 2nd player and choses a random hand.

Tested in IRB and in rspec, my ruby game seems to work.

For Web, I have erb pages that navigate well, BUT it's completely independant from the ruby game. At this point I cannot figure out how to link my instance variables with a web version. I still find it very confusing and I was trying different things that kept failing failing and failing so I'd like to se a working solution from Makers to understand how it works.

Also, I wrote some cucumber tests that I do not like at all. They pass but I would like to get a better understanding of given, when, then, with radios, with different cases. I followed some steps from web_steps which I thought would work and they didn't, for reasons I cannot understand. I think we need more guidance on the web_steps.rb document and see more examples of cucumber tests (different options)

Also images I wantd to put as static files in my pages don't work and I have no idea why.

I'm keen to get Makers' feedback on what I did already.

----------------------------------------------------------------------

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

**Rōnin BANZAI!!!!**

## Bonus level 1: Multiplayer

Change the game so that two marketeers can play against each other ( _yes there are two of them_ ).

## Bonus level 2: Rock, Paper, Scissors, Spock, Lizard

Use the _special_ rules ( _you can find them here http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock_ )

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock
