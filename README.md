Marcus' README Edits - My approach and mini code review
=================

My approach
---------
* I started the challenge by mapping out the full file structure of a web app that is deployed using Sinatra. I then recreated this structure including ensuring all 'required' elements were working across files and that RSPEC was running correctly
* I first mapped out the full user story of how I saw the website to be able to have a full picture on paper of what I wanted and what would be required
* I used the TDD cycle throughout development, and stuck to using this technique solidly. For each stage/feature: I wrote feature tests, then units tests, got the unit tests passing then the feature tests, then did a live test of the site. I found when modelling specifically that process diagraming was helpful to collect my thoughts
* After I satisfied all user stories, I provided a link to return to the start of the game and gave basic CSS a go as I had never done this before (e.g. adding images to the background of the first two pages)


Mini personal code review: My appraisal of my attempt at the weekend challenge
---------
* Overall I was pleased with my approach and outcome for this challenge. I feel like I applied a lot of what I had learned doing last weekends challenge, particularly driving development through testing and breaking things down using algorithmic thinking at each point
* I found that really letting the tests DRIVE development, constantly running RSpec and having that give the next direction, was really helpful and enabled me to build everything in a lean way
* There were a few situations where being new to web apps made tests hard to write e.g. ensuring a random outcome was fixed for Capybara testing

What I would do next
---------
* The app is in a basic form: I would like to add a lot more style to it as well as more features. Given its scope, I am happy with it
* I could also add more tests and refer to specific parts of webpages to cover every possible choice combination and make the testing more robust
* I am keen to gain a lot more practice in HTML (tags and attributes) and CSS syntax, as well as creating more complex web apps using a Model View Controller structure

Questions from the exercise:
---------
* More research/ clarity into how to decide whether to use a new page or use an 'if' within a page for displaying different content based on user choices
* Is there a better way of doing the 'if' tree in the game_over page. Is there a way of moving the logic out of the page itself? Can you do 'if' -> 'render form' => could refer to a form and have the if logic itself be more streamlined. 
* in the model: Research a better way to calculate RPS winner (or statement very long). Could a hash of potential choices be used?
* Did I need to use a post/redirect/get loop for the 3 RPS button choices? Was there another way/ best practice way of doing this?
* Research how you know which part of array is returned by srand
* Confirm whether stubbing should definitely NOT be done as part of feature tests (I used srand to fix a variable outcome)
* Check whether git repo clones work with images saved to public folder - do the images download and work on someone else's computer?
* In label tag, what does 'for' attribute do?
* Why does continous integration not pass on pull request - error is that ruby version is not correct - gemfile correctly specifies ruby version to use.



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
