# RPS Challenge

[![Build Status](https://travis-ci.org/harrim91/rps-challenge.svg?branch=master)](https://travis-ci.org/harrim91/rps-challenge)
[![Coverage Status](https://coveralls.io/repos/github/harrim91/rps-challenge/badge.svg?branch=master)](https://coveralls.io/github/harrim91/rps-challenge?branch=master)

Overview
-------

Makers Academy Week 3 Weekend Challenge

A basic web application for playing rock, paper, scissors.
Styling inspired by Geocities...

Makes use of:
- [Sinatra](http://www.sinatrarb.com/)
- [RSpec](https://github.com/rspec/rspec)
- [Capybara](https://github.com/jnicklas/capybara)


As a bonus, you can also play [rock, paper, scissors, lizard, spock](http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock)


Installation
-------

- fork and clone this repo
- ensure bundle gem is installed - `gem install bundle`
- inside your local repo, run `bundle`
- run `ruby app.rb`
- open a web browser and go to `http://localhost:4567/`

How to play
-------

- the player can enter their name before the game
- they will be presented the choices of game mode
- they will be presented with a choice of weapons depending on the game mode
- the player can choose one option
- the game will choose a random option
- a winner will be declared
