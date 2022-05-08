Rock Paper Scissors!
==================

This program is designed to play Rock, Paper & Scissors on a webapp. The app has been created through the guidance of the user stories provided:

> As a marketeer,\
So that I can see my name in lights,\
I would like to register my name before playing an online game.

> As a marketeer,\
So that I can enjoy myself away from the daily grind,\
I would like to be able to play rock/paper/scissors

The idea of this program is to be able to play Rock, Paper & Scissors against a computer online. You can type your name, then choose an option. The next page will show you who won.

This system was built using the following [TDD](https://en.wikipedia.org/wiki/Test-driven_development#:~:text=Test%2Ddriven%20development%20(TDD),software%20against%20all%20test%20cases.).

## Installation
Fork or download this repo.\
Use `gem install bundler` to install the correct gems to use and test this code.\
When installation completes, run `bundle`.\
You may also need to install the Twilio gem, [you can install that here](https://www.twilio.com/docs/libraries/ruby).

## How To Use
Open the code in a terminal and run `rackup`.
You can then access the webpage on a `localhost` with the designated port.
Play!

## How To Test
Run `rspec` to run through tests.\
Run `rubocop` to run through code efficiency.

## Bugs/Future Changes To The Code
* Testing the sent text is still something I am working on. In the process of figuring out how to mock the random behaviour of the computer choice.
* Need to restructure my code, breaking the SRP rule.
