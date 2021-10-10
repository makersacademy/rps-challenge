# Rock Paper Scissors

Instructions
-------
### setup

- git clone this repository
 then type in terminal:
- `cd rps-challenge`
- `bundle install`

### run

- type: `rackup` in terminal to start local server
- go to localhost address stated in terminal (usually: `LocalHost:9292`)


### RPS Challenge

I built this app to fit the user story below:

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

### My approach

As this is a simple app, I aimed to have a skinny controller without the need for a presenter class.

With more time I would have done some CSS styling possibly with some animation and a nice font for the player's name.

After that, adding an option to chose one player or two player game at the start which would have determined the route paths to go down within sinatra.


### Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

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
