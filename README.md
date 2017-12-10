# RPS Challenge [![Build Status](https://travis-ci.org/thatdania/rps-challenge.svg?branch=master)](https://travis-ci.org/thatdania/rps-challenge) ✂️📃⛰

The aim of this challenge is to create an online game of rock, paper, scissors

## Approach

![](images/Screen%20Shot%202017-11-12%20at%2022.07.51.png)

I first sketched out the way the pages were going to interact with each other. My
result showed there was a loop between the start page of the game and the outcome, as a player would play more than one round on this. I think I did manage to follow the single responsibility principle for methods and divided the tasks into classes (game, player and computer). Structuring the tests of which test goes where was difficult at first, but it was then easy to section them.

On another note, I definitely played around more with HTML for this challenge. I believed the interface was just as important as the back end to communicate the
game. My design skills definitely came in handy here.

If I had more time on this challenge, I would have implemented a score tab so
that the player would know how many rounds he or she would have scored in the
time he spent during the game. Also, an exit button with a result page would be
useful as well.

Thanks to Jamie, Marco and Eva for help and moral support to accomplish this.

## Domain Models

| Objects       | Messages          | Outputs                               |
| ------------- |:-----------------:| -------------------------------------:|
| name          | register          | See name in lights                    |
| r,p,s         | play              | Play rock paper scissors against com. |
| r,p,s (bonus) | play (bonus)      | Instead of com, make two multiplayers |
| r,p,s (bonus) | play (bonus)      | Adapt to the actual rules of the game |
