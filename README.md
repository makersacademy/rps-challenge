# RPS Challenge

## My Approach 

This is not finished. 

I set out to build a a version of rock, paper, scissors, spock & lizard game using the beloved Crystal Gems : Garnet, Amythyst, Pearl, Steven and Lapiz. The game follows the same mechanic that the selected move beats the first and third along from it etc.

# Learning Objectives

Starting out on this challenges i wanted to build my understanding with the following concepts: 

  - Use of the Singlton class sucessfully
  - Use of the Sinatra routing system that would allow my views to also include CSS
  - Correct use of method stubbing and doubling in RSPEC
  - Actually testing the correct things in RSPEC (not the end result of a change but just that first step)

# Unforseen Challenges

  - Ran into a merge conflict when my github had fallen behind my local repo, what a fun time. 
  - Learnt that HTML5 checkbox and radio buttons do not send query strings on submit, that they must be told by JavaScript to do so. 

# Reflection of L.O.

  - I wanted to create a singlton of the player class. As the game involved a preliminary stage of entering a players name and then entering a move on a seperate form. I thought that the use of a singlton class for Player as well as a before filter in sinartra would mean i'd be free from global variables. Whilst i was able to set up the singlton class, i was unable to add values on to it ...

  - i breifly read through layout and templating files with erb, and included a terrible style sheet that turns everything blue, just because i could :p ( I will style this nicely later but my concern was the mecahnics for this project)

  - I think i was able to effectively use stubbing and doubles with this projects until it came to the singleton part, i wasnt sure how to test wether this was set up working..... 

 # still to do

  - if i can get the singleton Pattern to work and add a move on to the Player, I can instantiate the Battle class which will output the result of the winner. (i want to do it via singleton - would be able to do if i just made battle accpet two params but thats not waht i want.)

  - style things and check the writing reads well

  - id like to see how to change the page title through the layouts: erb

  - I will try to spend 30 mins refactoring the code to ensure all reads ok.

# mechanics of battle 

 - I actually thought of two ways to solve this: 

    using an array and checking value of the indecies next to and third along from selected. Using a method to find that indecies if it was greater then the array length. Whilst this works i felt it wasnt that readable. 

    So I went for a hash array matched to arrays. i tried to seperate concerns of checking for draw, checking for win etc. only thing could have been clearer is the outcome message.


 



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

Reviewers will potentially be using this [code review rubric](docs/review.md).  Referring to this rubric in advance may make the challenge somewhat easier.  You should be the judge of how much challenge you want this weekend.

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
