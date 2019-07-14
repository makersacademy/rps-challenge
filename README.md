# RPS Challenge

Instructions
-------

* Challenge time: rest of the day and weekend, until Monday 9am
* Feel free to use google, your notes, books, etc. but work on your own
* If you refer to the solution of another coach or student, please put a link to that in your README
* If you have a partial solution, **still check in a partial solution**
* You must submit a pull request to this repo with your code by 9am Monday morning

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

Hints on functionality

- the marketeer should be able to enter their name before the game
- the marketeer will be presented the choices (rock, paper and scissors)
- the marketeer can choose one option
- the game will choose a random option
- a winner will be declared

In code review we'll be hoping to see:

* All tests passing
* High [Test coverage](https://github.com/makersacademy/course/blob/master/pills/test_coverage.md) (>95% is good)
* The code is elegant: every class has a clear responsibility, methods are short etc.

Reviewers will potentially be using this [code review rubric](docs/review.md).  Referring to this rubric in advance may make the challenge somewhat easier.  You should be the judge of how much challenge you want this weekend.


## Expected record got from the test

'''
fjmc8@HP-ProBook-455-G2 MINGW64 /f/makers/rps-challenge (master)
$ rspec

Game
  #player
    initializes a game with a player
  #result
    displays the correct result, scissors beats paper
    declares a draw if it is scissors vs scissors
    declares a lost result if it is scissors vs rock

Player
  #name
    returns the name

Have you considered running rubocop? It will help you improve your code!
Try it now! Just run: rubocop

Finished in 0.01419 seconds (files took 3.7 seconds to load)
5 examples, 0 failures


COVERAGE: 100.00% -- 28/28 lines in 2 files


'''

I have worked on the basis of https://github.com/baileytalks/rps-challenge (another student of Makers).
Basically I have refactor their code, trying to understand little by little how to she had processed with it.
