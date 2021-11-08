# Rock Paper Scissors Challenge

A web app that allows a player to play the game Rock, Paper, Scissors. 
I have implemented the first user story which allows a player to register their name. 

##To complete the project I would:##
- 
- [ ] Add a method `#play` to the `Game` class in model `game.rb`, containig the logic for which moves beat which other moves.
- [ ] Develop the app.rb to use this logic in the `/winner` route.
- [ ] Refactor so that an instance of Player could be used by an instance of Game (not yet working)
- [ ] Store the `move` parameter that is posted from the `/play` route in an instance variable (not yet working).

## Reflections:
I feel this has been a lesson in how **not** to do development, as I initally began using a TDD process, then felt pressed for time and so began coding directlty, and ended up wasting a lot of time and deleting a lot of code that did not work. So a good lesson learnt in the power of TDD! See more refletions (below)
 
## How to play:
*update this*
1. Use git clone to create a local repo. 
`git clone https://github.com/katemyoung/rps-challenge.git` 

2. Use bundler to install the required gems by running the command `bundle` in the project directory.

3. Navigate to the local repo then run `rackup`.
`rackup`

4. Locate the port, e.g. `port=9292`
```
[2021-11-08 09:18:43] INFO  WEBrick 1.7.0
[2021-11-08 09:18:43] INFO  ruby 3.0.2 (2021-07-07) [x86_64-darwin20]
[2021-11-08 09:18:43] INFO  WEBrick::HTTPServer#start: pid=54134 port=9292
```
5. In a web broswer, navigate to localhost:<port-number>
e.g. `localhost:L9292`
 
6. Play

## How to run the tests:

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

## Code review checklist:

- [ ] All tests pass
- [x] >95% test coverage
- [ ] The code is elegant: every class has a clear responsibility, methods are short etc.


## What I did:

**Setup:**
- [x] Forked the repo and then made a local clone
- [x] Ran `bundle` within the local repo to install required dependencies
- [x] Set up file structure
- [x] Added a config.ru file
- [x] Tried to run the rps_controller file, which did not work
- [x] Added gems for `sinatra/contrib` and then `webrick` to the Gemfile
- [x] Ran ruby './rps_controller' and did manual check in web browser at `localhost:4567`

**TDD:**
- [x] Began TDD: created `features_spec.rb` file and wrote first Capybara feature test for route '/'.
*At this point I referred to https://github.com/makersacademy/course/blob/main/pills/ruby_web_project_setup_list.md to correct my setup (see errors below).*
- [x] I got the first feature test to pass ('Hello World'), ran rubocop then committed.


## Reflections:
- My focus for this challenge was to maximise my learning, so I decided to take the following approach:
-- Set up and TDD and the Sinatra project from memory, adding inline comments to the code where I was not sure about something, to flag potential bugs
-- Testing the code
-- Checking projects I'd worked on the previous week
-- Checking the documentation
*I chose this approach to really activate and apply my learning.*

- I remembered a pairing partner copying and pasting the correct code in and comparing it with the incorrect code, which was great for learning, so I'm trying this (see examples below)

- The rack error is reminding me that I think I've missed a step: setting up selenium as the driver maybe? Something like capybara comes with one as standard but it is not so useful??
- The syntax for the capybara feature tests are different: `scenario`. 


**Error: (Mistakes are rich opportunities for learning)**
- I forgot the Capybara 'visit('/') method, looked in a previous repp
- I miss-wrote `ENV['RACK_ENV'] = 'test'`as this `ENV[RACK_ENV] = :test`
- I got the syntax for the Capybara RSPec feature type wrong: I wrote `describe RPS do type: :feature` instead of `describe ..., :type => :feature` *check book as this is still not correct*
- rack-test requires a rack application, but none was given: 
- I forgot several steps of set up in the `spec_helper.rb` file to get Capybara working: the `require File.join(File.dirname(__FILE__), '..', 'app.rb')` line, requiring capybara and rspec gems, and the `Capybara.app = RockPaperScissors` line.
- I also forgot that config.ru was to do with Rack
_ I also forgot in the app file, within the `RockPaperScissors` class:
``` ruby
configure :development do
    register Sinatra::Reloader
end
```
- I needlessly required 'app' in my features spec, which stopped it from working.
- I typed `erb: index` instead of `erb :index`
- When making the web helper methods, I got the ruby syntax wrong for method definition - I added an end.
- Even with that, it would not work.

**Questions:**

- [ ] What does this do in the app.rb: `run! if app_file == $0`
- [ ] Should feature tests be in the same or separate files?
- [ ] I could not make this code work: 
``` ruby
it 'has clickable button' do
 expect(page).to have_button('Rock')
end
```
- [ ] What's the good spec guide say about class names, where instance methods are #method_name
