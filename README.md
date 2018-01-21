# Rock, Paper, Scissors
-------
This is the classic _Rock, Paper, Scissors_ game. In this version you play against the 'Machine'. This project is built with test driven development (TDD) approach.

The site is built in Sinatra, Ruby, HTML and tested with RSpec, Capybara.  

## Setup
----
In your terminal window:
```
$ git clone https://github.com/bpourian/rps-challenge.git
$ cd rps-challenge
$ bundle
$ rackup
```
Open a browser and navigate to localhost:9292 or the given port on the rack start up message.



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
