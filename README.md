# RPS Challenge

Instructions
-------
```
$ git clone git@github.com:mihobo/rps-challenge.git
$ cd rps-challenge
$ bundle
$ rackup
```

Task
----
Provide a _Rock, Paper, Scissors_ game for the Makers Academy Marketing Array ( **MAMA** ) so they can play on the web with the following user stories:

```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

Functionality included:

- the marketeer should be able to enter their name before the game
- the marketeer will be presented the choices (rock, paper and scissors)
- the marketeer can choose one option
- the game will choose a random option
- a winner will be declared


## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

How to play
-----------
![Imgur](http://i.imgur.com/nMOyYqT.png)

First, enter a player name and press the submit button.

![Imgur](http://i.imgur.com/XA3wQuo.png)

Then, choose a weapon to play against the computer(NPC).

![Imgur](http://i.imgur.com/qq9BTfC.png)

You'll see the buttons change colour as you hover over them when choosing a weapon.

![Imgur](http://i.imgur.com/Omf4iqc.png)

If you want to change the player name, click the button "Change player name" to go back to the homepage.

![Imgur](http://i.imgur.com/iHmH9Pu.png)

The computer(NPC) will play a random weapon against you and the results are displayed immediately.

Click the button below labelled "Play again" to try your luck against the computer(NPC) again!


## What I'd like to add to this Challenge

I'd like to make a 2-Player mode that allows the user to not only play against the computer but also with a friend, and I'd like to add the Spock and Lizard "weapons" or "moves" to this game to make it a bit more exciting and different.

I'd like to have the win-lose logic and rules within my code, not just in the erb views, so that it can be easily tested within IRB or PRY too.
