# ROCK PAPER SCISSORS! A Basic Web-App

## Week 3 Pairing Challenge @ Makers Academy

### Design
We were challenged to build a rock paper scissors game. We worked alone.

We were given two user stories to satisfy:

```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

We were also given the following hints on functionality

-   the marketeer should be able to enter their name before the game
-   the marketeer will be presented the choices (rock, paper and scissors)
-   the marketeer can choose one option
-   the game will choose a random option
-   a winner will be declared

### Learning Objectives
-   Demonstrate that I can write easy to edit code.

### Instructions
-   `$ git clone https://github.com/saypop/battle`
-   `$ cd RPS`
-   `$ bundle`
-   `$ rackup config.ru` do not try to run this app with shotgun, it will not work.

### Tests
-   `$ rspec`

### Tech
-   Written in Ruby 2.5.0
-   Using the Sinatra web framework
-   Server is set up using Rackup
-   Tests are done with RSpec and Capybara

### Learnings
-   I feel comfortable working with Capybara and Sinatra
-   I have learned how little I know about HTML and CSS

### Acknowledgements
Shoutout to my reliable and ever present comrades Tenacity, Patience and Persistence.

### Set-up hints (for Makers students)
1.  `touch app.rb`
2.  In app.rb `require 'sinatra/base'`
3.  Create class `class RPS < Sinatra::Base;`
4.  Finish with `run! if app_file == $0`
5.  `touch config.ru`
6.  `require_relative "./app"` then `run RPS`
7.  `bundle`
8.  Add the following to spec-helper
    ```sh
    ENV['RACK_ENV'] = 'test'

    require File.join(File.dirname(__FILE__), '..', 'app.rb')
    require 'capybara'
    require 'capybara/rspec'
    require 'rspec'
    Capybara.app = RPS
    ```

In code review we'll be hoping to see:

*   All tests passing - CHECK
*   High test coverage - CHECK
# *   The code is elegant: every class has a clear responsibility, methods are short etc. - Please provide feedback on this.

Reviewers will potentially be using this [code review rubric](docs/review.md).  Referring to this rubric in advance may make the challenge somewhat easier.  You should be the judge of how much challenge you want this weekend.
