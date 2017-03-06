## RPS Challenge
#### Technologies: Ruby, Sinatra, RSpec, Capybara 
### Week 3 solo weekend challenge for [Makers Academy] (http://www.makersacademy.com)
[Outline](#outline) | [Screenshots](#screenshots) | [User Stories](#user-stories) | [Gems](#gems) | [Usage Instructions](#usage-instructions) 

## Brief
The Makers Academy Marketing Array ( MAMA ) have asked us to provide a game for them. Their daily grind is pretty tough and they need time to steam a little.

Your task is to provide a Rock, Paper, Scissors game for them so they can play on the web.

Hints on functionality

* the marketeer should be able to enter their name before the game
* the marketeer will be presented the choices (rock, paper and scissors)
* the marketeer can choose one option
* the game will choose a random option
* a winner will be declared

## Outline

## Screenshots  
#### Welcome screen
![Welcome screen](/public/img/welcome.png?raw=true "Optional Title")

## User Stories
```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

## Gems
```ruby
gem 'sinatra'
gem 'rake'

group :test do
  gem 'rspec'
  gem 'rubocop-rspec'
  gem 'rubocop'
  gem 'coveralls', require: false
  gem 'capybara'
  gem 'byebug'
  gem 'rspec-sinatra'
end
```

## Usage Instructions
* clone the repo and run bundle
```shell
$ git clone https://github.com/samjones1001/rps-challenge
$ cd rps-challenge
$ rvm 2.2.3
$ bundle
```
* run tests
```shell
$ rspec
```
* start up sinatra
```shell
$ ruby app.rb
```
* in your browser, navigate to http://localhost:4567/ 
