# Rock paper scissors
----

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

---

#### User Stories

ONE

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game
```

user enters name
- goes to web address /index
- types name in field
- clicks submit

name is registered for play
- name is posted as param to a new Player instance
- Player instance name accessor called on /play view

---

TWO

```
As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

chooses move
- clicks rock, paper, or scissors button
- choice is posted to /result page

outcome is decided
- new instance of Game is created
- Game instance random_choice method is called with user choice as argument
- Game compares moves to decide winner
- win or lose text is displayed on /result
---

What I'd change:

Nice formatting, two player over network
