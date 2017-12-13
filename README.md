# RPS Challenge [![Build Status](https://travis-ci.org/thatdania/rps-challenge.svg?branch=master)](https://travis-ci.org/thatdania/rps-challenge) ✂️📃⛰

The aim of this challenge is to create an online game of rock, paper, scissors



![](images/Screen%20Shot%202017-11-12%20at%2022.07.51.png)

## Approach

I first sketched out the way the pages were going to interact with each other. My
result showed there was a loop between the start page of the game and the outcome, as a player would play more than one round on this. I think I did manage to follow the single responsibility principle for methods and divided the tasks into classes (game, player and computer). Structuring the tests of which test goes where was difficult at first, but it was then easy to section them.

On another note, I definitely played around more with HTML for this challenge. I believed the interface was just as important as the back end to communicate the
game. My design skills definitely came in handy here.

If I had more time on this challenge, I would have implemented a score tab so
that the player would know how many rounds he or she would have scored in the
time he spent during the game. Also, an exit button with a result page would be
useful as well.

## How To Use 

1. Open the program terminal or an equivalent and enter:
```
https://github.com/thatdania/rps-challenge.git
```
2. Change to the directory of the project 
```
$ cd rps-challenge/
```
3. Install the apps dependencies
```
$ bundle install
```
4. Use terminal to host a server to play the game.
```
$ rackup config.ru
```
5. Go to a web browser and play the game at the following address:
```
http://localhost:9292/
```
6. Enter the player's name.
7. Pick a rock, scissors or paper to go against the computer! 


## Domain Models

| Objects       | Messages          | Outputs                               |
| ------------- |:-----------------:| -------------------------------------:|
| name          | register          | See name in lights                    |
| r,p,s         | play              | Play rock paper scissors against com. |
| r,p,s (bonus) | play (bonus)      | Instead of com, make two multiplayers |
| r,p,s (bonus) | play (bonus)      | Adapt to the actual rules of the game |

Having built this domain model was part of my progress, as it allowed me to note what functions were required for the program to work. It's a great technique I use to map out the need of the program to suit the needs of the project's objective. 
