Rock Paper Scissors Challenge
==================

### Task

I aimed to build a web application to furfill the following challenge:

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

Functionality:

- the marketeer should be able to enter their name before the game
- the marketeer will be presented the choices (rock, paper and scissors)
- the marketeer can choose one option
- the game will choose a random option
- a winner will be declared

### Strategy

I first broke down the user stories using domain modelling. My resulting models were then converted into Capybara feature tests, after which I wrote unit tests in RSpec. Following that, I wrote my code.

After learning about the polymorphic competition exhibited in the [Side-blotched lizard](https://en.wikipedia.org/wiki/Common_side-blotched_lizard), I decided to theme my web app around the 3 different morphs competing for a female.

### Installation

Clone repository:
```
$ git clone git@github.com:nazwhale/rps-challenge.git
$ cd rps-challenge
```

Install dependencies with bundle:
```
$ gem install bundler
$ bundle install
```
