# RPS Challenge


 Intro
 ---------


 The Code
 -------


My Approach
 --------
 - Built in ruby, spec written using rspec, and using rubocop for style checking.
 - 
 - I tried to use a TDD approach when coding this challenge.
 - I started off by converting the user stories given into a [domain model](docs/domain_model.md). This was a more thorough domain model than for the airport challenge, having had a workshop on domain modelling in the week. It separates out objects and actions, with properties and methods listed by class. Having a thorough plan definitely helped when it came to writing the code.
 - Then, starting with the first user story, I built features one at a time, ensuring all tests still passed.
 - I tried to ensure I was committing regularly - pretty much after every test was passed.
 - I then would often refactor to follow the SRP as much as possible, meaning there are lots of short methods, but hopefully the result is easy to follow.  
 - I also tried to make sure I wasn't over-engineering, which I think I did last week a bit. I made sure to only create what was in the user stories, rather than overcomplicating things for myself.

 New Learnings
 ---------
 - This was the first time I had used environment variables in any actual code. Storing them in a .env file (not committed to Github of course) and then using the Dotenv gem to load them on deployment of the code was relatively painless.
 - I used mocking in a couple of places which took me a while to set up and make sure I was checking the right inputs for it. I feel a little uneasy still with whether some of the tests I've done are completely rigorous but I think they'll do.
 - Using Twilio was a first for me, and indeed it was the first time I've built something in Ruby that interacts with something outside of its own environment. Setting it up was easier than testing it, since Twilio have some good documentation on using it.

 Issues Encountered
 --------
 - Drew back from over-engineering the basket - the user stories actually don't look at a way to look at the basket contents for example, only the price of what's in there. This was something I began thinking about how to build before realising I didn't need to.
 - I began fiddling about with calculating the item price for things in an order from the order class, but then realised this should be functionality of the menu, so moved it into there.  
 - Having added `Menu#select_price` to solve the above issue, I realised that `#select_dish` actually wasn't being used, but I decided to leave it in there as it would likely be useful with only very slightly more complex functionality required.


Instructions
-------

* Feel free to use google, your notes, books, etc. but work on your own
* If you refer to the solution of another coach or student, please put a link to that in your README
* If you have a partial solution, **still check in a partial solution**
* You must submit a pull request to this repo with your code by 9am Monday morning

Task
----

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


As usual please start by

* Forking this repo
* TEST driving development of your app


## Bonus level 1: Multiplayer

Change the game so that two marketeers can play against each other ( _yes there are two of them_ ).

## Bonus level 2: Rock, Paper, Scissors, Spock, Lizard

Use the _special_ rules ( _you can find them here http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock_ )

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

In code review we'll be hoping to see:

* All tests passing
* High [Test coverage](https://github.com/makersacademy/course/blob/master/pills/test_coverage.md) (>95% is good)
* The code is elegant: every class has a clear responsibility, methods are short etc.

Reviewers will potentially be using this [code review rubric](docs/review.md).  Referring to this rubric in advance may make the challenge somewhat easier.  You should be the judge of how much challenge you want this at this moment.

Notes on test coverage
----------------------

Please ensure you have the following **AT THE TOP** of your spec_helper.rb in order to have test coverage stats generated
on your pull request:

```ruby
require 'simplecov'
require 'simplecov-console'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  # Want a nice code coverage website? Uncomment this next line!
  # SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start
```

You can see your test coverage when you run your tests. If you want this in a graphical form, uncomment the `HTMLFormatter` line and see what happens!
