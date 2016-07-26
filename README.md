[![Build Status](https://travis-ci.org/JAstbury/rps-challenge.svg?branch=master)](https://travis-ci.org/JAstbury/rps-challenge)


RPS Challenge
=======

The task was to create a simple 'Rock, Papers, Scissors' web app. Users should be able to enter their name before the game and be presented with their choices. Their opponent is a computer which chooses a random option before a winner is declared.

How to Use
-----

```
$ git clone git@github.com:JAstbury/rps-challenge.git
$ cd rps-challenge
$ bundle
$ rackup
$ ruby app.rb
```

Screenshots
-----

![Screenshot](http://i.imgur.com/lXujXNsm.png)
![Screenshot](http://i.imgur.com/uBWqH0pm.png)

My Approach
-----
I divided the program into three separate classes: Game, Computer and Player. Initially, an instance of the Computer class was created on initialization of the Game class but I felt this violated the single responsibility principle so I moved this into the controller. Now game is only responsible for evaluating who has won.

The vast majority of the logic is contained within the controller and models so the views are only concerned with presentation. However, there are a few if statements in the results page so that it knows which image to display.
