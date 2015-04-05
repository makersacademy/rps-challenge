[![Coverage Status](https://coveralls.io/repos/DanBlakeman/rps-challenge/badge.svg)](https://coveralls.io/r/DanBlakeman/rps-challenge)
[![Build Status](https://travis-ci.org/DanBlakeman/rps-challenge.svg)](https://travis-ci.org/DanBlakeman/rps-challenge)

# Multiplayer Rock Paper Scissors!

About
-------
This was a weekend challenge to develop a sinatra app to allow users to play rock paper scissors remotely. Using Ruby, TDD, OOP & BDD!

Screenshots
----

![Scrnsht](/public/images/Scrnsht1.png)
![Scrnsht](/public/images/Scrnsht2.png)
![Scrnsht](/public/images/Scrnsht3.png)
![Scrnsht](/public/images/Scrnsht4.png)

User Stories Provided:
----

```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors

```

Approach:
----

As our course has not yet covered databases, we we're asked to break Ruby convention and use a constant to hold multiplayers.

For a challenge, I decided to begin this project solely from a Cucmber BDD to MVp approach, not by building a game in terminal. The original MVp was'a user can pick a weapon, computer always picks paper'. This was built soley in sinatra to begin with. As complexity increased (random AI), i switched to building classes and unit testing in rspec.

I also took a challenge, in that, rather than assuming multiplayer to only have two remote players. I tried to make the multiplayer system as scalable as possible.

The approach i have taken will hopefully allow many hundreds of players to play at once. As each user chooses their weapon, the first player waits putting a copy of their object in the constant, then the second arrives they use the first players object to determine the winner, then deletes the first player from the constant.

If you'd like to discuss this more, just leave a comment! :)

How to contribute
----

Please leave comments or issue pull requests! Feedback is much appreciated!!

I'd love to hear more in particular about:

OOP best practices (particularily in relation to how i have implemented the multiplayer function). Since the 'scalable multiplayer' feature was relatively complex and dependent on sinatra and user session data, i decided to create helper methods and move them to a module that server.rb can use, this module was not unit tested in rspec but rather tested by cucumber at feature level. However i feel a little uncomfortable that this isn't as great OOP & TDD wise as the player/game classes?

BDD testing, Cucumber and random behaviour:

I tested the game's random behaviour and functionality using Rspec. This does mean the single player feature level cucumber tests are rather meaningless. (Testing for presence of Div's not AI behaviour). How would you handle this situation? I was of the beleif that stubbing random computer player behaviour in cucumber at feature level would be unnessercy as it was covered at unit level? Love to hear others thoughts on this! :)


Future extensions
----

I'd like to double check and see if i need to deepen test coverage to cover all outcomes of rock, paper, scissors.

Could potentialy also add lizard and spock options to game.

How to use:
----

Simply download and run 'rackup' in the root, to run this on your own machine. (Multiple players will need be on the same machine in different browsers)

If you'd like to run tests, just run 'rake'.



As ever, Thanks for reading! :)

Dan

