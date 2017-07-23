# RPS Challenge

By James Ransome

Installation Instructions
-------

1. Clone this repository into a directory of your choice
2. Change into the directory from the terminal
3. Run Bundle
4. Run Rackup
5. Paste `http://localhost:9292/` in your browser's address bar to navigate to your local host and run the game!

Example terminal input for above steps:

```
$ git@github.com:jransome/rps-challenge.git
$ cd rps-challenge
$ bundle
$ rackup
```

This web application was built independently over the weekend after week 3 of the Makers Academy onsite course according to the below user stories.

Task
----

Knowing how to build web applications is getting us almost there as web developers!

The Makers Academy Marketing Array ( **MAMA** ) have asked us to provide a game for them. Their daily grind is pretty tough and they need time to steam a little.

Your task is to provide a _Rock, Paper, Scissors_ game for them so they can play on the web with the following user stories:

```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

Hints on functionality

- the marketeer should be able to enter their name before the game
- the marketeer will be presented the choices (rock, paper and scissors)
- the marketeer can choose one option
- the game will choose a random option
- a winner will be declared
