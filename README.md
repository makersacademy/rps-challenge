Rock - Paper - Scissors
=======================

How to use
==========

To play this game please follow these instructions:

$ git clone git@github.com:ayanit1/rps-challenge.git
$ cd rps-challenge
$ bundle
$ rackup

```
Please sign in to play by entering your name, click submit, and prepare your choice! Select one of the three options (rock, paper, scissors) by clicking on one of the buttons named so, computer will generate a random selection to play vs you, and a winner will be named! if you wish to play again, click the play again button and repeat the process!
```

Limitation and improvements
===================================
- Unfortunately I had very little time to do this challenge. I wasn't happy about the use of global variables due to what was being told during the week 3 challenge. I tried to implement class methods to store a param rather than using the global variables but I couldn't get my program to work. Right now the player class has the params[:choice] assigned after it's been instantiated. To do it through the route of game class -> player class -> player method proved very difficult. I would definitely spend more time trying to understand and play with it. 
- I feel the game class has slightly too much responsibility. I would probably extract the assigning computer move into another class.
- More tests  on all the methods on all the class
- Make more tests to test all outcomes and edge casing. Something I lacked.
- Perhaps use a hash map?


Author
======
Albert
