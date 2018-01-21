# RPS Challenge

Summary
-------
I implemented this by test-driving features to get functionality first, and then refactored responsibility out into game, computer and player classes.  This required both further testing and adjustment of pre-existing tests to ensure that the coverage remained 100%.  I avoided the use of global variables by creating and storing one instance of the game.


User Stories
----

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```



Setup Instructions
----

To play:
```
$ git clone git@github.com:maireadjenn/rps-challenge.git
$ cd rps-challenge
$ bundle
$ rackup (this is set as 9292 by default)
```
Navigate to [localhost:9292](http://localhost:9292) in your choice of browser

To run tests:
1. Run rspec
2. Coverage is 100%
