# Rock, Paper, Scissors Challenge

This is a simple web app game that allows a user to enter their name and play a game of rock, paper, scissors against a computer who makes their move selection at random.

The user stories were as follows

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

In addition, I decided to add my own user story:

```
As a marketerr
So that I can play another game
I would like to click a button that allows me to play again
```

## Process

I identified that I would likely only need 2 classes (Game & Player) as Models and 3 Views (/, /play, /outcome). 

I originally thought that each player choice should direct you to a page for each option (/rock, /paper, /scissors) before moving on to the /outcome page, however I soon realised this wasn't actually necessary.

For the logic to determine a winner, I found this helpful answer on stackoverflow which had everything I needed: https://codereview.stackexchange.com/questions/179782/lets-play-rock-paper-scissors-with-ruby


## How to run

First, run 

```
bundle install
```
to ensure the correct gems are loaded and ready to go.


Then run 
```
rackup
```
and visit the localhost port in your browser ( i.e localhost:9292 )

You should be able to play then game!

## Todo

I would like to try and condense or refactor the result method in the game class so it handles less logic than it does currently.

I'd also look to ad a score counter and make the game a best of 5 rounds, assuming we are sticking with the computer vs player model.
