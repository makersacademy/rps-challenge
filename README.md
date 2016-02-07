ROCK, PAPER, SCISSORS!

File tree

├── CONTRIBUTING.md
├── Gemfile
├── Gemfile.lock
├── README.md
├── Rakefile
├── app.rb
├── disabled.yml
├── docs
│   └── review.md
├── enabled.yml
├── lib
│   ├── game.rb
│   └── player.rb
├── spec
│   ├── feature_tests
│   │   └── user_stories_spec.rb
│   ├── game_spec.rb
│   ├── player_spec.rb
│   ├── spec_helper.rb
│   └── web_helpers.rb
└── views
    ├── computer.erb
    ├── end_game.erb
    ├── index.erb
    ├── names.erb
    └── play.erb


Installation Instructions

1. Go to the link below and fork the repository 
(note: you will need to be signed in to your GitHub account to view or fork)

	https://github.com/rachelsmithcode/rps-challenge

2. Clone the repository by typing: 

	$ git clone <the SSH or HTTP link from your new forked repo on your GitHub 		  account>

(note: Make sure you are in the directory that you wish the challenge folder and it’s contentce to be stored in. Cloning creates the new directory so there is no need to make a rps-challenge directory)

3. To install the gem files run the command:

	$ bundle 

(note: If this returns an error you may need to install the bundler gem first, using the command: $ gem install bundler
for further details check the website: http://bundler.io)


User Stores to Cover

As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors

My approach

We need a page where the user can enter their name. This should then send them to a page where they can enter their choice of weapon the computer should then choose a weapon too and send them to the final results page. 

The logic will need to check who the winner is between the user's choice, inputted by clicking a button on the webpage and the computer's choice, chosen at random from an array.

If there is time I will add the option for a player two and nerd the place up with some extra lizzard/Spock action. 

Operating guide

1. From the root of the “” directory run the app.rb file by typing:

ruby app.rb

(this will start the local server running and allow you to load the page up in your browser)

2. Navigate to the home page for rock, paper, scissors. 

http://localhost:4567/

3. In the box next to “What is your name, warrior?” enter your game name and click “Submit”

![Screenshot](http://imgur.com/PYWCr4y)

4. Take a moment to enjoy your welcome.

5. When you are ready click “Let’s do this!”

![Screenshot](http://imgur.com/7533Qz8)

6. Select your weapon of choice, be it ROCK, PAPER or SCISSORS and click “DO YOUR WORST!”

![Screenshot](http://imgur.com/eRF3YKB)

7. View the computer’s choice and tremble, awaiting your fate! Click “Results!”

![Screenshot](http://imgur.com/pTS96te)

8. Glory in your victory/ wallow in defeat / feel ambivalent about your draw.

![Screenshot](http://imgur.com/rqnEpbd)

9. If you fancy another game but can’t be bothered to enter your name again, simply click “Play again?” 


# RPS Challenge: Rōnin Badge Test

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

* Filling out your learning plan self review for the week: https://github.com/makersacademy/learning_plan (if you haven't already)
* Forking this repo
* TEST driving development of your app

**Rōnin BANZAI!!!!**

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
require 'coveralls'
require 'simplecov'

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
Coveralls.wear! 
```

You can see your [test coverage](https://github.com/makersacademy/course/blob/master/pills/test_coverage.md) when you submit a pull request, and you can also get a summary locally by running:

```
$ coveralls report
```

This repo works with [Coveralls](https://coveralls.io/) to calculate test coverage statistics on each pull request.

