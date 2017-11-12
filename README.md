# RPS Challenge

User stories
----

```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

## Instructions

```sh

To run:
$ gem bundle install
$ ruby ruby.app

http://localhost:4567/

```
## Method

The app allows two variations of the classic game 'Rock, Paper Scissors': one player versus a randomised computer response, or two player head to head.

In the first instance the player chooses a weapon and a '.sample' function selects a weapon at random from an array of weapons. In two player mode the weapon chosing process is split over two screens allowing users to pick without the opposition seeing their choice.

Once weapons are selected they're passed to a Game class which uses an array of key-value pairs to compare weapons and deduce a winner.

## Evaluation

- views classes could be named better, maybe space to refactor here
- routing could be tighter maybe, ran out of time to experiment further
- would be nice to make result screen image reflect winning weapon
