RPS Challenge
=================
This is the week 3 challenge of the Makers Academy bootcamp. It is a web app built in Ruby that enables to
two players to play a game of rock, paper, scissors.

Prerequisites
-------
- You have installed Ruby

How to install
-------

1. Fork this repo, and clone to your local machine.
2. Run the command `gem install bundler` (if you don't have bundler already).
3. When the installation completes, run `bundle`.

Building the program
-------
- I used Jam Board to map out the class structure using the user stories.
- I coded the program using TDD. First I wrote a failing unit test and then wrote the method to pass the test. I also used feature
tests to ensure everything was working correctly on the browser. I followed the red, green, refactor process.
- I made sure my methods/tests covered all of the user stories plus any edge cases.
- I also ensured that I got 100% test coverage.

How to use this program
-------
- Open app with rackup and enter the name of each player
- On the '/play' page both players can enter their moves. They can also hide their move to prevent the other player from seeing
- Once moves are submitted, the results page will show each move and confirm the winner
-------
User Stories
---------
```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors

```