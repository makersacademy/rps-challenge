# Rock, Paper, Scissors! #

## Where a player fights the computer to a digital death  ##

 A simple game of hand-based combat to show an implementation of web-app development.

### User Stories ###

 Check userstories.md for an overview of the project requirements.

### Getting Started#

run ```$ rackup``` and navigate to ```localhost:9292``` in your browser

### Prerequisites

All prerequisites are available by running the command ```$ bundle```.

You will need to run the command ```$ gem install bundle``` if you don't have bundle already installed.

## The Game ##

Rock, Paper, Scissors is a game of skill. The rules are as follows:

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

- The player will be presented the choices (rock, paper and scissors)
- the player can choose one option
- the game will choose a random option
- a winner will be declared

### Structure ###

#'''tree'''

### Development Methodology

This program was built and tested using Test Driven Development

* [Ruby](https://www.ruby-lang.org) - The language used to develop this program - v2.4.0p0 (2016-12-24 revision 57164)
* [Rspec](http://rspec.info) - The testing framework used to drive development - v3.5.4
* [Capybara](http://teamcapybara.github.io/capybara/) - The library used to test & simulate interactions with the web-app.
* [Sinatra](http://www.sinatrarb.com/) - The DSL used to create this web-app.
