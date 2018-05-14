# Rock Paper Scissors
![TravisCI_Status](https://travis-ci.org/julesnuggy/rps-challenge.svg?branch=master)

[![CodeClimate_Maintainability](https://api.codeclimate.com/v1/badges/38507a175e0b80852b58/maintainability)](https://codeclimate.com/github/julesnuggy/rps-challenge/maintainability)

[![CodeClimate_TestCoverage](https://api.codeclimate.com/v1/badges/38507a175e0b80852b58/test_coverage)](https://codeclimate.com/github/julesnuggy/rps-challenge/test_coverage)

## Introduction
Play Rock-Paper-Scissors against the computer or a second (human) player.

This app was made using Ruby for the server-side (with Sinatra for the web framework) and HTML (erb) and CSS for the client-side. A TDD-approach was taken using the RSpec and Capybara test frameworks. Travis CI is used for Continuous Integration (automated testing).

## Screenshots
**Home Screen**<br>
<img src="assets/images/RPS_Home.png" width="500"><br><br>
**P1 Move Select**<br>
<img src="assets/images/RPS_P1.png" width="500"><br><br>
**P2 Move Select**<br>
<img src="assets/images/RPS_P2.png" width="500"><br><br>
**Result Screen**<br>
<img src="assets/images/RPS_Result.png" width="500">

## Features
* Player name entry - manual input or random name generator
* Play against the computer or a human (check box)
* Graphical interface to select your move
* Automatic logic to determine and show the winner

## Installation
1. Clone this repo: `$ git clone git@github.com:julesnuggy/rps-challenge.git`
2. Install dependencies: `$ bundle install`
3. Boot local server: `$ shotgun` or `$ ruby rps_app.rb`
4. Open localhost in browser (e.g. http://localhost:9393) - check your Terminal for port number after you've booted the server

## Testing
RSpec was used for unit testing of the calc_result.rb logic, whilst Capybara was used to feature test the actual game via browser interaction simulation. To run these tests, simply run `$ rspec` in your Terminal.

To test code quality, run `$ rubocop`.
