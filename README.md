# Rock Paper Scissors Spock Lizard

A small web based game that allows you to input your name and play Rock Paper
Scissors Spock Lizard against an AI or against another player. To trigger single
player mode simply do not input a name for player 2 and player 2 will be
automatically assigned to the resident RPS AI, who's name is 愛.

## User Stories:

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors

As a marketeer
So that I can have more social fun
I want to be able to play RPS with a colleague when they are around

As a marketeer
Because I've got too good at RPS
I want to be able to play a more complex variation like RPSpockLizard
```
## Methodology

This implementations of RPSpockLizard uses a `Player` and `AIPlayer` classes with
overloaded decision making methods, so that they can be called interchangeably
whether there is a human player or not within the `app.rb` code. The `Game` class
manages basic game logic running and stores game state in a `@game` class variable.
The `choices` class is simply an easily accessible wrapper for classes to get
the different possible game choice possibilities. The indexes of the `CHOICES`
constant array also act as a look up table for the numeric values of the choices.

## Victory Matrix

Win conditions in the game are calculated using a victory matrix class which
places the different outcomes in a possibility grid and returns an invalid player index
or `nil` for draws and the winning players player index inside the game class
if there was a victor. Here the values are encoded alphabetically as 'Rock', 'Paper',
'Scissors', 'Vulcan', 'Lizard'.


    R  P  S  V  L
R  │5  1  0  1  0│
P  │0  5  1  0  1│
S  │1  0  5  1  0│
V  │0  1  0  5  1│
L  │1  0  1  0  5│
