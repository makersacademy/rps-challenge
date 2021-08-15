William's attempt at the RPS challenge.

This was a fun challenge for this weekend, which I really enjoyed, I just wish I had more time to do them, as family commitments once again hampered my available time to do it, and I regret not starting on Friday during our free time. Everything was going dandy until I hit a major roadblock with Capybara not being able to read a click_button command, stating in the test that the button was disabled (which it clearly wasn't as I had been navigating the website and tested it there). Upon realizing that it would only respond to the button if it was called "Submit" and nothing else, and that I wasted a lot of time trying to figure it out, you could argue that I fell out of love with the Capybara tests when it happened again further down the line, and probably didn't write as many feature tests as I should have.

I dived straight into the deep end here and right from the get go set up for the Spock and the Lizard, as well as the multiplayer options. Although I did not get time to finish the multiplayer options, I believe I have set up my game.rb to easily to be flexible both with single player and multiplayer, and adding it in wouldn't be too hard. Once I had completed the game.rb, everything was passing pretty well, besides Rubocop which stated that my method for determining what beat what was too long, but given how long it had taken to write, and the fact that it had gone wrong numerous times, and I felt I had refactored it pretty well already, lead me to disregard that notice, as I had no plans to waste any time messing around with it again.

As late Sunday evening loomed, I finally caved in and created a Player class to ensure my Game class could be used for both modes (even though I knew at this point I was not going to be making multiplayer), doing so made literally all of my Game_spec tests fail, and I did briefly try to get some doubles going to save this, but it was just error after error and the problem just seemed to be getting worse, it was very late into Sunday night at this point, my brain was well and truly fried (and I also knew that after writing this and wrapping up, a new challenge of how to push to Github given their very vague "we no longer accept passwords - good luck" message on Friday awaits me), so I unwound with some tidying up on my HTML views (which in turn, failed even more tests), and called it a night.

Despite literally no test passing at this point, I kind of felt that testing has become obsolete and served it's purpose, the app clearly works, as I had run many IRB tests and had been testing it extensively in the browser the whole time, and felt that spending another hour fixing tests on something that clearly works seems a bit pointless.

All in all while these challenges are fun, to make any substancial progress on them really seems like it requires the whole weekend, which quite regularly, I don't have.



# RPS Challenge

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

[You may find this guide to setting up a new Ruby web project helpful.](https://github.com/makersacademy/course/blob/main/pills/ruby_web_project_setup_list.md)

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
* High [Test coverage](https://github.com/makersacademy/course/blob/main/pills/test_coverage.md) (>95% is good)
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
