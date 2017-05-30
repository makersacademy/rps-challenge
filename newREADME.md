# Rock, Paper, Scissors, Lizard, Spock! #

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

- Rock crushes Scissors and Lizards
- Paper wraps Rock and disproves Spock
- Scissors cut Paper and decapitate Lizards
- Lizard poisons Spock and eats Paper
- Spock vaporises Rock and smashes Scissors

  http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock

- The player will be presented the choices
- the player can choose one option
- the game will choose a random option
- a winner will be declared

### Structure ###
    .
    ├── CONTRIBUTING.md
    ├── Gemfile
    ├── Gemfile.lock
    ├── LICENSE
    ├── README.md
    ├── Rakefile
    ├── app.rb
    ├── config.ru
    ├── coverage
    ├── docs
    │   └── review.md
    ├── lib
    │   ├── game.rb
    │   ├── opponent.rb
    │   ├── player.rb
    │   └── rules.rb
    ├── newREADME.md
    ├── spec
    │   ├── features
    │   │   ├── play_spec.rb
    │   │   └── register_spec.rb
    │   ├── game_spec.rb
    │   ├── opponent_spec.rb
    │   ├── player_spec.rb
    │   ├── rules_spec.rb
    │   ├── spec_helper.rb
    │   └── web_helper.rb
    ├── user_stories.md
    └── views
        ├── arena.erb
        ├── index.erb
        └── play.erb

### Development Methodology

This program was built and tested using Test Driven Development

* [Ruby](https://www.ruby-lang.org) - The language used to develop this program - v2.4.0p0 (2016-12-24 revision 57164)
* [Rspec](http://rspec.info) - The testing framework used to drive development - v3.5.4
* [Capybara](http://teamcapybara.github.io/capybara/) - The library used to test & simulate interactions with the web-app.
* [Sinatra](http://www.sinatrarb.com/) - The DSL used to create this web-app.
