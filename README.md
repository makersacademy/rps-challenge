Rock, Paper, Scissors Challenge
=================
#### Overview
A simple web application to play a game of Rock, Paper, Scissors.
Sinatra is used to power the routing requests. Objects were built in Ruby.
Capybara was used for testing web functionality, with RSpec powering them and the unit tests.

#### Quickstart:
Use Ruby 2.5.1
```
$ git clone https://github.com/andrewwood2/rps-challenge
$ cd rps-challenge
$ bundle install
```

#### How to use the application:
Launch the application in the browser using rackup.
```
$ rackup
```
Open the application in your web browser.
```
http://localhost:9292/
```
Enter player name(s) and select the version of the game.
The extended version is Rock, Paper, Scissors, Lizard, Spock, which has two extra potential moves.

#### How to run the tests:
1. Spec folder includes feature tests and unit tests
2. All tests are run via ```rspec```
3. Code coverage is 100%

#### Approach to solving the challenge:
1. Review app specification and split into user stories (below)
2. Diagram a basic structure to fulfil the user requirements
3. Set up a Ruby file structure
4. Write feature test for first user story
5. Follow TDD to write smaller unit tests to drive the code
6. Start with one class
7. Consider the Single Responsibility Principle to separate concerns and design an object orientated structure

#### User stories:
```
As a player,
so that I can see my name in lights,
I would like to register my name before playing an online game.

As a player,
so that I can participate in the game,
I would like to select from the possible moves.

As a player,
so that I can play independently,
I would like a Computer to select a random move.

As a player,
so that the game has a purpose,
I would like it to display the winner.

As a player,
so that I can play against a friend,
I would like my friend to be able to select a move.

As an expert player,
so that the game brings a little more variety,
I would like the option to select an extended version.
```
