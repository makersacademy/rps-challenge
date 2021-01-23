# RPS Challenge

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

## Methodology
1. Built out web framework without game functionality
2. Create ```Player``` class with attributes ```@name``` and ```@choice```
3. Create ```Game``` class which reviews choice and calculates winner
4. Create ```Opponent``` class to compete with ```Player```
4. Added multiplayer functionality?...

#### Results Table
| Player 1 | Opponent | Winner |
| --- | --- | --- |
| Rock | Scissors | Player 1 |
| Scissors | Paper | Player 1 |
| Paper | Rock | Player 1 |
| --- | --- | --- |
| Rock | Rock | Draw |
| Scissors | Scissors | Draw |
| Paper | Paper | Draw |
| --- | --- | --- |
| Rock | Paper | Opponent |
| Scissors | Scissors | Opponent |
| Paper | Rock | Opponent |
