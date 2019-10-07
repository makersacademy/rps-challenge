# RPS Challenge

#### Instructions

* Clone this repo
* Run `bundle` inside the directory to load the Gemfile dependencies
* `rackup` can be used to run the app on a local server
  - the address will be shown as (e.g.) `port=9292`
  - an address can also be specified with `rackup` e.g. `rackup -p 1234`
* With `rackup` running you can use the app in a browser by navigating to localhost:9292 (or your specified port if not 9292)

Up to 2 players can join the game by entering their names in the appropriate fields; if either field is left blank, a computer-generated player will control that slot.

This is a 'hotseat' game played through a single interface. If 2 players join the game, they will be to enter their moves one after the other - the first player's move will not be shown on the second player's screen. Once both players have entered a move, the result page will confirm both the moves and declare the winner.

---

#### Notes

This project was completed as part of an accelerated apprenticeship at Makers Academy. The app was created in Ruby, using Sinatra for HTTP capability and applying TDD with tests run through RSpec/Capybara.

Although test coverage is reported as 100%, there are no automated tests for the 'human vs human' gameplay. This functionality arose naturally as the 'robot vs robot' gameplay was implemented, with passing tests for RvR only. All modes have however been manually tested.
