Rock Paper Scissors Challenge
=================

Task
----
The Makers Academy Marketing Array ( **MAMA** ) have asked us to provide a game for them. Their daily grind is pretty tough and they need time to steam a little.

The task was to provide a _Rock, Paper, Scissors_ game for them so they can play on the web with the following user stories:

```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

Rules
------
- Scissors cuts Paper
- Paper covers Rock
- Rock crushes Lizard
- Lizard poisons Spock
- Spock smashes Scissors
- Scissors decapitates Lizard
- Lizard eats Paper
- Paper disproves Spock
- Spock vaporizes Rock
- (and as it always has) Rock crushes Scissors

How to Play
-----------
```sh
$ git clone git@github.com:innlouvate/rps-challenge.git
$ cd rps-challenge
$ bundle
$ rackup
```

Approach
---------
This app uses a model with three classes; the game, human players and the
computerised Sheldon player. The game class takes two player parameters which
could be either human or computerised. The display of the /play page is altered
depending upon the number of human players and whether the game has completed,
i.e. both players have taken their turn.

Further development
---------------------
Additional features;
- Layout and design improvements
- Best of...
- Consider splitting out views/inc javascript

Contributors
-------------
[Lou Franklin](https://github.com/innlouvate)
