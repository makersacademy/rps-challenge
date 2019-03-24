# RPS Challenge

[![Build Status](https://travis-ci.org/micosmin/rps-challenge.svg?branch=master)](https://travis-ci.org/micosmin/rps-challenge)

## Task

Knowing how to build web applications is getting us almost there as web developers!

The Makers Academy Marketing Array ( **MAMA** ) have asked us to provide a game for them. Their daily grind is pretty tough and they need time to steam a little.

Your task is to provide a _Rock, Paper, Scissors_ game for them so they can play on the web with the following user stories:

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

Hints on functionality

- the marketeer should be able to enter their name before the game
- the marketeer will be presented the choices (rock, paper and scissors)
- the marketeer can choose one option
- the game will choose a random option
- a winner will be declared

## Approach to solving the challenge

1. Forked repo
2. Installed dependencies
3. Set up Travis to follow the rps-challenge repo
4. Added travis status badge to README
5. Set up spec_helper to work with capybara
6. Set up app.rb and config.ru
7. Create route to root '/'
8. Test '/' route shows 'Hello' when server is run

---

Process Modelling
Sequence Modelling
Class Diagram

---

9. Create feature test for first user story
10. Create Views folder
11. Add index.erb to views folder
12. Add form to index.erb with Name field and Start game button
13. Add play.erb to views folder
14. Have play.erb display user name
15. Create rps_spec
16. Create rps model
17. Create play feature
18. Write and pass game tests
19. Create player model
20. Create player_spec test file
21. Write and pass player tests
22. Allow user to choose between rock, paper, scissors
23. Submit choice to result page
24. Result page compares user choice with computer random choice
25. Result page shows winner
26. Used singleton for game class
27. Refactor out of the game class the algo of declaring the winner - use it as a singleton
28. Test game and winner classes
29. Add muliplayer option - 2 users can sign in and play the game
30. Add changes to rps class to support turn changing between 2 players
31. Create new erb view to support the turn changing option and ask player 2 for his choice before result page
32. Creates Restart button to reset player choices and restart the game

## Bonus level 1: Multiplayer

Change the game so that two marketeers can play against each other ( _yes there are two of them_ ).

## Bonus level 2: Rock, Paper, Scissors, Spock, Lizard

Use the _special_ rules ( _you can find them here http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock_ )

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

In code review we'll be hoping to see:

- All tests passing
- High [Test coverage](https://github.com/makersacademy/course/blob/master/pills/test_coverage.md) (>95% is good)
- The code is elegant: every class has a clear responsibility, methods are short etc.

Reviewers will potentially be using this [code review rubric](docs/review.md). Referring to this rubric in advance may make the challenge somewhat easier. You should be the judge of how much challenge you want this weekend.
