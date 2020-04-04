# RPS Challenge

[Source](https://github.com/makersacademy/rps-challenge)

The Makers Academy Marketing Array ( **MAMA** ) have asked us to provide a game for them. Their daily grind is pretty tough and they need time to steam a little.

Your task is to provide a _Rock, Paper, Scissors_ game for them so they can play on the web with the following user stories:

## User Stories

> As a marketeer  
> So that I can see my name in lights  
> I would like to register my name before playing an online game

> As a marketeer  
> So that I can enjoy myself away from the daily grind  
> I would like to be able to play rock/paper/scissors

## Technical requirements

- the marketeer should be able to enter their name before the game
- the marketeer will be presented the choices (rock, paper and scissors)
- the marketeer can choose one option
- the game will choose a random option
- a winner will be declared
- Test driven with all tests passing and high test coverage

Advanced:

- Multiplayer - Change the game so that two marketeers can play against each other ( _yes there are two of them_ ).
= Rock, Paper, Scissors, Spock, Lizard - Use the [_special_ rules](http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock).

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

## Domain Model

Objects | Messages
---|---
Marketeer |
Online Game | Name, Rock, Paper, Scissors, winner

## Development Journal

I wrote a short domain model diagram in order to organise my thoughts on the user stories.

There aren't very many so I will need to rely on good TDD to drive the behaviour out of the tests.

### User Story 1

> As a marketeer  
> So that I can see my name in lights  
> I would like to register my name before playing an online game

First some set up, configured spec_helper.rb to require app.rb and set the capybara app to Rps.

- Wrote a small Hello World test to make sure the testing is configured correctly. Test Red.

- Added app.rb with Rps inheriting Sinatra::Base.

- Added a route for '/' returning "Hello World". Test Green.

Also added config.ru to be able to rackup for manual testing. 

When the marketeer visits the site, there needs to be a field in order to enter their name, and their name should be displayed.

Wrote a feature test using capybara, that when visiting / and entering Dave into the name field and submitting the form, Dave is displayed on the page. Test red.

- Updated get / to return an view, index.erb (in the views dir)

- In index.erb added a form to enter name and submit, posting to /play 

- In app.rb added a post /play route, hardcoded to return 'Dave'. Test green.

Wrote a feature test entering the name Jim. Test red.

- In post /play instead returned the name parameter of the query string. Test green.

#### Refactoring 1

- Enabled sessions

- Changed post /play to add the params to the session hash.

- Added redirect to get /play, where an instance variable is set with the key in the session hash, and displayed in a view: play.erb.

- Removed the now useless Hello World test.

All tests still green.

### User Story 2

> As a marketeer  
> So that I can enjoy myself away from the daily grind  
> I would like to be able to play rock/paper/scissors

This is quite a jump forward. Breaking it down:

### User Story 2.1

> As a marketeer  
> So that I can play a game of rock/paper/scissors
> I would like to be able to choose which to use rock/paper/scissors

This is more manageable.

Wrote a feature test for Dave to choose Rock and see Dave: Rock. Test red.

- Added button for Rock to submit and post to /result.

- Added route for post /result to display 'Dave: Rock'.

Test Green.

Wrote a feature test for Dave to choose Paper and see Dave: Paper. Test red.

- Added button for Paper to submit and post to /result.

- Changed post /result to display the choice made from the parameters, Dave still hardcoded.

Test Green.

Wrote a feature test for Jim to choose Scissors and see Jim: Scissors. Test red.

- Added button for Scissors to submit and post to /result.

- Changed post /result to display the name held in session.

#### Refactoring 2.1

- Rather than outputting an interpolated string, added the choice to the session hash. and redirected to get /result

- Added route for get /result assigning instance variables name and choice, and returning view result.erb 

- Extracted the lengthy enter name process to helper methods in web_helpers.rb and required this in the spec_helper file.

Tests still green.

### User Story 2.2

> As a marketeer  
> So that I can play a game of rock/paper/scissors
> I would like to see my computer opponent's choice

Right now the controller (app.rb) is simply returning back user inputs to the view.

In order to play a game vs a computer opponent there needs to be a logic that makes the computer choose an option.

Wrote a feature test for Dave to choose Rock and the computer to choose Rock, expect to see 'Computer: Rock'. Test red.

- Hardcoded 'Computer: Rock' in the result view. 

Test green.

Wrote a feature test for Dave to choose Rock and the computer to choose Paper, expect to see 'Computer: Paper'. Test red.

- In post /result added a new key to session, comp_choice, and assigned that by sampling an array containing 'Rock' and 'Paper'.

- Added a new instance variable for comp_choice in get /result, and altered the result view to properly display this

- Needed to control the randomness in the tests so used srand to make sure they behave consistently.

Test green.

Wrote a feature test for Dave to choose Rock and the computer to choose Scissors, expect to see 'Computer: Scissors'. Test red.

- Added 'Scissors' to the sampled array.

- Added an appropriate srand to the test to control randomness.

Test green.

### User Stories 2.3, 2.4 and 2.5

> As a marketeer  
> So that I can draw a game of rock/paper/scissors
> I would like to see that we draw if my choice matches the computer's choice

> As a marketeer  
> So that I can win a game of rock/paper/scissors
> I would like to see that I win if my choice beats the computer's choice

> As a marketeer  
> So that I can lose a game of rock/paper/scissors
> I would like to see that the computer wins if my choice loses to the computer's choice

Before going any further the logic should probably be extracted to a model at this point.

#### Refactoring to a Model

Wrote tests for a Player class constructed with the name of the player. Test red.

- Added a lib dir, added player.rb

- Player constructs with name as parameter, assigned to @name.

- Added attr_reader for @name.

Test green.

Wrote test that #choose sets the the choice attribute. Test red.

- Wrote custom setter #choose to set @choice.

- Added attr_reader for @choice.

Test green.

Wrote tests for a Comp class, #name to return 'Computer'. Test red.

- Added comp.rb to lib.

- Comp constructs with @name always assigned as 'Computer'.

- Added attr_reader for @name.

Test green.

Wrote tests that #choice attribute can be Rock, Paper or Scissors randomly. Test red.

- Wrote @choice to be initialised with a sample of the Rock Paper Scissors array form app.rb.

- Added attr_reader for @choice.

- Added appropriate srands to control randomness in tests.

Test green.

Wrote tests for a Game class constructed with the name of the player, player_class defaulting to Player, comp_class defaulting to Comp (allows dependency injection for testing).

The tests center around #winner, which returns either the player or comp instances, or nil if it is a draw.

Wrote a suite of tests for each scenario of RPS. Tests red.

- Wrote some logic in a method #decide_winner, a series of guarded clauses checking @player and @comp choices and assigning @winner with either @player or @comp  

- Exposed @winner with an attr_reader

Tests green.

Extracted three helper methods from #decide_winner (#player_chose_rock, #player_chose_paper, #player_chose_scissors). Each contains the logic to assign winner based on @comp.choice. #decide_winner contains a switch statement to call a helper method based on @player.choice.

_There must be a better way that this logic, but I'm going to keep going as it works and isn't too bad._

#### Refactoring Controller to use Model

In order for the view to show the winner or a draw, the controller needs to use the model.

Wrote a feature test where Dave chooses rock, and so does the computer, expecting there to be 'Draw' displayed.

