Rock, Paper and Scissors Challenge
==================================

This is the challenge for the third weekend at Makers Academy, the goal was to
build a system that emulates a rps game with the following requirements:

1. User register his/her name
2. User can select one out of the three possible choices
3. User can see opponent selection and final result


On this system we have four classes as follow:

* Game, which responsibilities are:
    1. Receive Users weapons
    2. Call Computer to load a random weapon
    3. Call Weapon class to evaluate who is the winner

* Player, which responsibility is:
    1. Store Users names

* Computer, which responsibility is:
    1. Generates a random weapon from weapons available

* Weapon, which responsibility is:
    1. Store game rules
    2. Decide the outcome for a game.



The system needs to be initialize with a Game class, this class needs to be injected
with an instance of Player, Computer and Weapon class, the last two can be
omitted whereas they are injected by default.


User Stories provided
=====================

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

Gemfile
=======

These are the gems used on this challenge

```
source 'https://rubygems.org'

ruby '2.2.3'

gem 'sinatra'
gem 'rake'

group :test do
  gem 'rspec'
  gem 'rubocop-rspec'
  gem 'rubocop'
  gem 'coveralls', require: false
  gem 'capybara'
  gem 'pry-byebug'
  gem 'rspec-sinatra'
  gem 'selenium-webdriver'
end

```


Testing by using rspec
=======================================

On you console you need to hit the following command to run tests created

`User/username/rps-challenge/rspec`

then you will have an outcome like this one

![USER](/Users/willibaur/Dropbox/Course/WK-03/rsps-challenge/public/images/rspec.png)


Resources
=========

I designed this solution by myself, I did not copy any other solution available on the web.

As external resource I used Relish, Ruby-doc and CSS-tricks
