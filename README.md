# RPS Challenge


Instructions


Approach
----
I began by mapping out a rough flow-chart of how a user would progress through the various objects involved in the program. I think mapped this out as a box-diagram of all the Models that would go into my MVC.

My next step was to write some tests, on paper, for these individual models. I then wrote these tests in my /spec folder and went about converting each test to green (one Model at a time).

Once all the Models were completed, I went about building the Controller and Views, through which a user's data would passed. I found this very helpful, as I then knew what all the underlying logic was, and I knew that it worked, and the View and Controller components were mostly just a matter of hooking everything together on the front-end.

Once the basic functions were working, I started refactoring things, trying to find a neater way to pass entries from my database Model to the Controller (which involved setting the database to a constant). This raised issues with my tests however, so I had to build a web-helper to make sure the database was cleared at the start of every test (otherwise the next test would carry the database-state of the previous test).

I was aiming to get multiplayer done, but as of writing this it isn't installed yet. The logic is there, and the Model passes tests for taking in multiple players. I just have to set it up on the Controller, as well as edit the Views to take in multiple players.

In order to get data to display properly, I have taken the first step of moving some of the text-display logic back from the View to the Model-side for Play.erb (it requests a list of names, string-interpolated, from a method inside the Database class), although I think maybe this also should be grouped in a new class, 'StringInterpolater'.

The way the game is structured, it should be able to take in any number of new weapons, so long as the win-conditions are entered into the Hash of Winning Scenarios (given that it runs on a point system). To win, a user simply has to finish a round with more win-scenarios than lose-scenarios; and to avoid a draw, the round must end with the total number of points being not-Zero (and no matter how many weapons or players there are, if everyone either draws the same weapon, or everyone makes one victory and one loss, then points are zero).

My computating of who wins is very convoluted, and it is that way because it's trying to do a long-hand version of a much simpler calculation. However, the simpler calculation involves this:

https://artofproblemsolving.com/wiki/index.php/Modular_arithmetic/Introduction

applied in this way

http://paleyontology.com/foop/rpsls.html

And while my computation basically does that in a long-hand way, I don't feel comfortable enough with their solution to apply it for myself.

-------

Task
----

Knowing how to build web applications is getting us almost there as web developers!

The Makers Academy Marketing Array ( **MAMA** ) have asked us to provide a game for them. Their daily grind is pretty tough and they need time to steam a little.

Your task is to provide a _Rock, Paper, Scissors_ game for them so they can play on the web with the following user stories:

```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

## Bonus level 1: Multiplayer

Change the game so that two marketeers can play against each other ( _yes there are two of them_ ).

## Bonus level 2: Rock, Paper, Scissors, Spock, Lizard

Use the _special_ rules ( _you can find them here http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock_ )

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock
