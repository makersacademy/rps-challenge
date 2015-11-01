RPS Web App [![Build Status](https://travis-ci.org/makersacademy/rps-challenge.svg?branch=master)](https://travis-ci.org/makersacademy/rps-challenge) [![Coverage Status](https://coveralls.io/repos/hsheikhm/rps-challenge/badge.svg?branch=master&service=github)](https://coveralls.io/github/hsheikhm/rps-challenge?branch=master)
================================

* [Task](#task)
* [My Approach](#my-approach)
* [Directory Structure](#directory-structure)
* [App Usage](#app-usage)
* [Demo App](#demo-app) - ENTER HEROKU LINK!
* [Download Instructions](#download-instructions)

Task
----

The Makers Academy Marketing Array ( **MAMA** ) have asked you to provide a game for them. Their daily grind is pretty tough and they need time to steam a little.

Your task is to provide a ***Rock, Paper, Scissors*** game for them so they can play on the web with the following user stories:

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

Hints on functionality:

- The marketeer should be able to enter their name before the game
- The marketeer will be presented the choices (rock, paper and scissors)
- The marketeer can choose one option
- The game will choose a random option
- A winner will be declared

Basic Rules:

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

My Approach
------------
My aim was to create a **Minimum Viable Product (MVP)**. Therefore I decided to keep the features and design of this program as simple and elegant as possible. I first designed the class objects:

* [Game](https://github.com/hsheikhm/rps-challenge/blob/master/lib/game.rb) (holds the weapons and game rules)
* [Computer](https://github.com/hsheikhm/rps-challenge/blob/master/lib/computer.rb) (gives the computer a random weapon)
* [Player](https://github.com/hsheikhm/rps-challenge/blob/master/lib/player.rb) (for the user to sign up and choose a weapon)


After having completed the **RSpec** [testing](https://github.com/hsheikhm/rps-challenge/tree/master/spec) for the above classes I then moved onto web app side of things and therefore used **Sinatra** and **Capybara** to build and test the main features. In order to achieve the ***separation of concerns*** I made sure to keep my [controller](https://github.com/hsheikhm/rps-challenge/blob/master/rps_web.rb) *skinny* so that it didn't have too many responsibilities. Instead of using global variables I also used the handy Sinatra *helper methods*.

Once all the features of the web app had been tested and implemented it was then just a case of applying styling to the app through [HTML](https://github.com/hsheikhm/rps-challenge/tree/master/views) and [CSS](https://github.com/hsheikhm/rps-challenge/blob/master/public/css/application.css).

Directory Structure
---------------------
```
├── lib/
│   ├── computer.rb
│   ├── game.rb
│   └── player.rb
│
├── public/
│   │── css/
│   │   └── application.css
│   └── images/        
│
├── spec/
│   │── features/
│   │   ├── change_player_spec.rb
│   │   ├── play_again_spec.rb
│   │   ├── player_draws_spec.rb
│   │   ├── player_loses_spec.rb
│   │   ├── player_wins_spec.rb
│   │   └── register_name_spec.rb
│   ├── computer_spec.rb
│   ├── game_spec.rb
│   ├── player_spec.rb
│   ├── spec_helper.rb
│   ├── web_helpers.rb
│
├── views/
│   ├── draw.erb
│   ├── lose.erb
│   ├── play.erb
│   ├── registration.erb
│   └── win.erb
│
└── rps_web.rb
```
