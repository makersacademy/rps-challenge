# Rock Paper Scissors Challenge

A web app that allows a player to play the game Rock, Paper, Scissors. 
 
**Basic Rules**
- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

## How to play:
*update this*
Use git clone to create a local repo. 
`git clone https://github.com/katemyoung/airport_challenge.git` 

Use bundler to install the required gems by running the command `bundle` in the project directory.

Navigate to the local repo then run irb.
`irb -r './lib/dishes.rb'`

Run `rspec` from the project directory to run the tests.

**You can use this programme in irb to:**

## User Stories:

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

## File structure: 

```
|--
|--|--
  
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

[You may find this guide to setting up a new Ruby web project helpful.](https://github.com/makersacademy/course/blob/main/pills/ruby_web_project_setup_list.md)

## Bonus level 1: Multiplayer

Change the game so that two marketeers can play against each other ( _yes there are two of them_ ).

## Bonus level 2: Rock, Paper, Scissors, Spock, Lizard

Use the _special_ rules ( _you can find them here http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock_ )



## Code review checklist:

- [ ] All tests pass
- [ ] >95% test coverage
- [ ] The code is elegant: every class has a clear responsibility, methods are short etc.



## What I did:

**Setup:**
- [x] Forked the repo and then made a local clone
- [x] Ran `bundle` within the local repo to install required dependencies
- [] Set up file structure
- [] Added a config.ru file
- [] Tried to run the rps_controller file, which did not work
- [] Added gems for `sinatra/contrib` and then `webrick` to the Gemfile
- [] Ran ruby './rps_controller' and did manual check in web browser at `localhost:4567`

**TDD:**
- Began TDD: created `features_spec.rb` file and wrote first Capybara feature test for route '/'.

- At this point I referred to https://github.com/makersacademy/course/blob/main/pills/ruby_web_project_setup_list.md to correct my setup (see errors below).
- I got the first feature test to pass ('Hello World'), ran rubocop then committed.
- Then I took a 10 min break.



Reflections:
- My focus for this challenge was to maximise my learning, so I decided to take the following approach:
- Set up and TDD and the Sinatra project from memory, adding inline comments to the code where I was not sure about something, to flag potential bugs
- Testing the code
- Checking projects I'd worked on the previous week
- Checking the documentation
I chose this approach to really activate and apply my learning.

- I remembered a pairing partner copying and pasting the correct code in and comparing it with the incorrect code, which was great for learning, so I'm trying this (see examples below)

- the rack error is reminding me that I think I've missed a step: setting up selenium as the driver maybe? Something like capybara comes with one as standard but it is not so useful??
- The syntax for the capybara feature tests are different: `scenario`


**Error: (Mistakes are rich opportunities for learning)**
- forgot the Capybara 'visit('/') method, looked in a previous repp
- I miss-wrote `ENV['RACK_ENV'] = 'test'`as this `ENV[RACK_ENV] = :test`
- I got the syntax for the Capybara RSPec feature type wrong: I wrote `describe RPS do type: :feature` instead of `describe ..., :type => :feature` *check book as this is still not correct*
- rack-test requires a rack application, but none was given: 
- I forgot several steps of set up in the `spec_helper.rb` file to get Capybara working: the `require File.join(File.dirname(__FILE__), '..', 'app.rb')` line, requiring capybara and rspec gems, and the `Capybara.app = RockPaperScissors` line.
- I also forgot that config.ru was to do with Rack
_ I also forgot in the app file, within the `RockPaperScissors` class:
```
configure :development do
    register Sinatra::Reloader
end
```
- I needlessly required 'app' in my features spec, which stopped it from working.
- I typed `erb: index` instead of `erb :index`
- When making the web helper methods, I got the ruby syntax wrong for method definition - I added an end.
- Even with that, it would not work.

**Questions:**

- [] What does this do in the app.rb: `run! if app_file == $0`
- [] Should feature tests be in the same or separate files?
- [] I could not make this code work: 
``` ruby
it 'has clickable button' do
 expect(page).to have_button('Rock')
end
```