# Helen's notes...
<br>  .... followed by RPS challenge instructions

# Rock, Paper, Scissors Game App - HTML<br>
 
Note: I have designed this challenge so two players can enter their names and play against each other. Players enter their choice of tool via a dropdown, which they can both see. <br>
Redesigning using <scan> would allow players choices to be secret from one another. An action point to consider next time.<br>
 
# User story<br>
 
The Makers Academy Marketing Array ( MAMA ) have asked us to provide a game for them.<br>
 Their daily grind is pretty tough and they need time to steam a little.<br>
 
Your task is to provide a Rock, Paper, Scissors game for them so they can play on the web with the following user stories:<br>
 
As a marketeer<br>
So that I can see my name in lights<br>
I would like to register my name before playing an online game<br>
 
As a marketeer<br>
So that I can enjoy myself away from the daily grind<br>
I would like to be able to play rock/paper/scissors<br><br>
 
# Functionality:
<br>
The marketeer should be able to enter their name before the game;<br>
The marketeer will be presented the choices (rock, paper and scissors);<br>
The marketeer can choose one option;<br>
The game will choose a random option;<br>
A winner will be declared.<br>
<br>
# Steps<br>
 
Fork Makers Repo and git clone to local terminal.<br>
cd to rps-challenge.<br>
The `Gemfile.lock` contains “BUNDLED WITH 1.16.1” - therefore, you need to run `gem install bundler -v '< 2.0'`, then `bundle install` to install Gems.<br>
Create rps.rb file, and test using `Ruby rps.rb` - Navigate to http://localhost:4567 to test.<br>
Add `require ‘sinatra’` to the rps.rb - This is where we will add our routes.<br>
Add test to check the users can register their names. Make this test pass.<br>
Define the link get '/register'.<br>
Create `index.erb` file and add `erb :index` into the get /register.<br>
Add your text to the index.erb file, along with a text box and submit button for the users to submit their names.<br>
Ensure test is now passing.<br>
We then need to create a POST, called play, with `erb :play`, and with the @registeredpPlayer1 and @registeredpPlayer1 -  where the users will be greeted and allowed to play Rock,Paper,Scissors. Using the @instance variable, we’ll be able to see the user input name. Ensure in `erb :play`, action points towards `/play’, whilst the method is ‘get’ - as we’re retrieving our value input from index.erb<br>
Define in `play/erb` - 1. Thank user for registering, 2. Ask user to select input from dropdown, 3. Get user to submit answer.<br>
Set up a POST /result route, and add to a new result.erb - action points towards `/play’, whilst the method is ‘get’, as we’ll want to receive the input the user entered form the dropdown.<br><br>
 
Test using Rackup - This will mean the port will change to 9292, and I added ENV['RACK_ENV'] = "test" and require 'rack/test' to spec_helper.rb, along with Capybara.app = Rps<br>
Also add `gem rest-test` to Gemfile<br>
Can test using `rackup`, instead of shotgun<br>
 
Classes used<br>
Rps<br>
require 'sinatra'<br>
require './lib/game' - (Game class)<br>
require './lib/player' - (Player Class)<br>
Game - Contains<br>
Initialize method, with both players as parameters<br>
Create_players method, which creates a new instance of the game class, with players parameter<br>
Result method, which calculates a win, lose or draw between both players chosen tools<br>
Used a hash to store the winning combinations, as easy to pull out data to match each players tool choice<br>
Ensure the following attr_readers: :registeredplayer1, :registeredplayer2, :win_results<br>
 
Player<br>
Initialize method, with player name as parameters<br>
Tool_of _choice method, with tool chosen as parameter<br>
Using both the methods above, I can call .tool and .name within the Game class<br>
 
erb.files<br>
Result.erb - Return @game.result method<br>
Play.erb - Thanks users for registering, provides two dropdowns for users to select their tool choice, and address users by name, calling the name method on each user<br>
Index.erb - Allows users to enter their names<br>
 
Config.ru file - contains require_relative './rps', which is the filename, and run Rps, will is the class<br>



# RPS Challenge

Instructions
-------

* Challenge time: rest of the day and weekend, until Monday 9am
* Feel free to use google, your notes, books, etc. but work on your own
* If you refer to the solution of another coach or student, please put a link to that in your README
* If you have a partial solution, **still check in a partial solution**
* You must submit a pull request to this repo with your code by 9am Monday morning

Task
----

Knowing how to build web applications is getting us almost there as web developers!

The Makers Academy Marketing Array ( **MAMA** ) have asked us to provide a game for them. Their daily grind is pretty tough and they need time to steam a little.

Your task is to provide a _Rock, Paper, Scissors_ game for them so they can play on the web with the following user stories:

```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

Hints on functionality

- the marketeer should be able to enter their name before the game
- the marketeer will be presented the choices (rock, paper and scissors)
- the marketeer can choose one option
- the game will choose a random option
- a winner will be declared


As usual please start by

* Forking this repo
* TEST driving development of your app


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
* High [Test coverage](https://github.com/makersacademy/course/blob/master/pills/test_coverage.md) (>95% is good)
* The code is elegant: every class has a clear responsibility, methods are short etc.

Reviewers will potentially be using this [code review rubric](docs/review.md).  Referring to this rubric in advance may make the challenge somewhat easier.  You should be the judge of how much challenge you want this weekend.

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
