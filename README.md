# RPS Challenge
--------

What is it?
---------

Rock-Paper-Scissors challenge is the classic game made with the Sinatra
framework, using Capybara/RSpec for TDD. A player selects one of the three
choices, and the computer chooses one randomly, a winner is nominated.
The User stories were the following:

```
As a player
So that I can see my name in lights
I would like to register my name before playing an online game

As a player
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

Added bonus stories

```
Bonus level 1: Multiplayer
Change the game so that two marketeers can play against each other ( yes there are two of them ).

Bonus level 2: Rock, Paper, Scissors, Spock, Lizard
Use the special rules ( you can find them here http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock )
```
ScreenShots:
----

![rps](static/images/Selection_001.png)

Build Process
-----

I made this challenge the TDD way, by writing the Capybara/Rspec Unit/Feature
tests before my actual code. I'm using global variables only for the simplicity
they offer(obviously a bad practise), as we haven't been introduced to DBs yet.

**Helpful resources:**
* http://www.sinatrarb.com/intro.html
