# RPS Challenge

This program runs a game of rock, paper scissors from a browser.

Instructions to play
-------

* clone or download this repo
* install dependencies using $bundle install
* start server using the $rackup config.ru command
* visit localhost:9292 in your browser to accsess the game.
* one person can play against the computer,which randomly generates a move.

Approach
----

Given the following user stories, I decided to make the game over two pages, the first to register the player and the second to play the game.

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

Going forward/code review:

- I struggled to get my feature test for determining a winner working, I would like to correct this, so any insight would be    appriciated.
- Although the logic works in the program, the interface could do with a bit more work, I sould like to learn more about css to work on the overall look of my game.

- I'd also like to impliment these two features in my game:
1. Change the game so that two marketeers can play against each other
2.Use the _special_ rules ( _you can find them here http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock_ )

