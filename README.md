# RPS Challenge

## Instructions
-------
1. Setting up Sinatra and Rack:
  * set up basic Sinatra application file called app.rb

  require 'sinatra/base'
  require 'sinatra/reloader'

  class Rpsgame < Sinatra::Base
    configure :development do
     register Sinatra::Reloader
  end

    get '/' do
      'Hello Rock, Paper, Scissors game!'
    end

    run! if app_file == $0
  end

2. Configuring rackup command to run the application in app.rb, via a file called config.ru

  require_relative "./app"
  run RPS

3. Installing extra gems files :
    * gem 'thin'
    * gem 'puma'
    * gem 'reel'
    * gem 'http'
    * gem 'webrick'

4. Making Capybara talks to Sinatra

  * Set the environment to "test".
  * Bring in the contents of the app.rb file.
  * Require all the testing gems (RSpec, Capybara, and the Capybara RSpec    package that lets them talk to each other).
  * Tell Capybara that any instructions like visit('/') should be directed at the application called 'Rspgame'.

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', 'app.rb')

require 'capybara'
require 'capybara/rspec'
require 'rspec'

Capybara.app = Rspgame

5. Creating folder for features test in spec directory: spec/features

-------

## First user story

As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game


1. Created register_spec.rb file in spec folder and written the scenario.

2. Created view folder for the .erb files:
  * index.erb 
  * play.erb

3.RSpec test passed!


## Second user story
```
As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

The second user story is more complex and it needs to be braek down to few scanarios: 

* the marketeer should be able to enter their name before the game:

```ruby
scenario 'see the game options' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
end
```

* the marketeer will be presented the choices (rock, paper and scissors):

```ruby
scenario 'choise a object to start game' do
        click_button 'Rock'
        expect(page).to have_content 'You chose Rock!'
        click_button 'Paper'
        expect(page).to have_content 'You chose Paper!'
        click_button 'Scissors'
        expect(page).to have_content 'You chose Scissors!'
end
```

* the marketeer can choose one option:

* the game will choose a random option:

* a winner will be declared:



##

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
