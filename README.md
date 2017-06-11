
Rock, Paper, Scissors Challenge
=================

Makers Academy week three weekend project to build a web app to let users play games of rock, paper, scissors.

Installation & Testing
--------

* Simply fork or clone this repo, and run `bundle install`
* Type `rackup` on the command line to start the server.
* Navigate to localhost:9292 in a web browser
* Tests can be run by running `rspec` on the command line in the main project directory

Features
--------

* User selects single or multiplayer mode
* Players enter their names
* In single player, the user plays against the computer, which chooses its move at random
* Multiplayer allows two human users to play each other
* The app determines the winner based on each player's move, and declares the result

Technologies & Principles
-------------------------

* Ruby
* Sinatra
* RSpec
* Capybara

Further Development
-------------------

* Replace if statements in results.rb with a more concise hash for determining the winner of each play
* Add CSS styling to make the front end more attractive.
