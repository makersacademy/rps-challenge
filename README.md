
Instructions
-------
$ git clone sarah https://github.com/sara6/rps-challenge.git
$ cd rps-challenge
$ bundle
$ ruby app.rb

Lib and spec set up
-------------------
* app.rb (controller)
* game.rb
* player.rb
* game_spec.rb
* player_spec.rb
* views- index.erb, play.erb and game_over.erb
* feature test folder

Functionality
---------------

- the marketeer can enter their name before the game
  complete
- the marketeer will be presented the choices (rock, paper and scissors)
  complete
- the marketeer can choose one option
  complete but logic in controller needs resolving
- the game will choose a random option
  model works but need to bring into controller and view
- a winner will be declared
  not working





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
