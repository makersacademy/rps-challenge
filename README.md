[![Build Status](https://travis-ci.org/githubschool/on-demand-github-pages.svg?branch=master)](https://travis-ci.org/githubschool/on-demand-github-pages) [![Coverage Status](https://coveralls.io/repos/github/antcin/rps-challenge/badge.svg?branch=master)](https://coveralls.io/github/antcin/rps-challenge?branch=master)

# RPS Challenge
Week 3 - Weekend challenge

Summary
----

This web application allows a player to play *Rock, Paper, Scissors* against a computer.


Functionalities
----
- A player is able to enter their name before the game
![screenshot](https://github.com/antcin/rps-challenge/screenshots/enter_player_name_rps.jpeg)
- A player is presented the choices (rock, paper and scissors)
![screenshot](https://github.com/antcin/rps-challenge/blob/master/screenshots/presented_with_choices.jpeg)
- A player can pick one option
- The game pick a random option
- A winner is be declared
- A player can start another game
![screenshot](https://github.com/antcin/rps-challenge/blob/master/screenshots/last_four.jpeg)



Interface
-------

Link to play the game online:
https://rock-paper-scissors-ac.herokuapp.com/

Instructions to play the web application locally, from the command line:
```sh
$ git clone git@github.com:[antcin]/rps-challenge.git
$ cd rps-challenge
$ bundle
$ rackup -p 9292
```

In a web browser, visit `localhost:9292` and follow the instructions of the game.

Testing
-------
Run `rspec` from the command line.

Reflections
-------
Really enjoyed this challenge. It has been really cool to apply what I learned during the week (e.g. setting up a web framework using Sinatra or implementing CSS style sheets).
I have started reading Sandi Metz's [POODR](http://www.poodr.com/), which turned out to be very useful with regards to trying and keeping the code as _DRY_ as possible and following the _Single Responsibility Principle_.
I still rely on walkthroughs and code written by students from previous cohorts (@lwkchan and @serenahathi's code provided me with several interesting inputs); however, I am beginning to feel slightly less like a _knob_ and understand concepts that where pretty much obscure to me in the previous two weeks (e.g. mocks and stubs). It's still a long way to go, but I feel much more confident. Also, my domain modelling skills still require further improvement.

To do (someday)
- Allow two players to play the Game
- Implement _Rock, Paper, Scissors, Spock, Lizard_
- Improve CSS design
